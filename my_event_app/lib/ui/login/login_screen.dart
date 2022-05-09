import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/user_bloc.dart';
import 'package:my_event_app/main.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen();

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ScrollController scrollController = ScrollController();

  final TextEditingController cpfOrEmailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<UserBloc>(builder: (_, userBloc, __) {
      return Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.toScale, 0, 15.toScale, 0),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Image.asset(
                      'assets/images/login-logo.png',
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 34.0,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                            fontFamily: GoogleFonts.bungee().fontFamily,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(2, 1),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).pop(this.widget),
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.toScale),
                            child: Icon(
                              Icons.arrow_back,
                              color: Theme.of(context).primaryColor,
                              textDirection: TextDirection.ltr,
                              size: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(top: 5),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(
                              115,
                              63,
                              151,
                              76,
                            ),
                            fontFamily: GoogleFonts.bungee().fontFamily,
                            fontSize: 10.toScale,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "ENTRE PARA CURTIR MUITO!!",
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [_getCPFOrEMAILNameTextFormField(context, userBloc), _getPassWordTextFormField(context, userBloc)],
                      ),
                    ),
                    _getSpace(size: 10.toScale),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "ESQUECI MINHA SENHA",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: GoogleFonts.bungee().fontFamily,
                            fontSize: 10.toScale,
                            shadows: <Shadow>[
                              Shadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(2, 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _getSpace(size: 25.toScale),
                    Center(
                      child: getButton("Enviar", () async {
                        Navigator.of(context).pushNamed("/homeScreen");
                      }),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30.toScale),
                      child: InkWell(
                        onTap: () => Navigator.of(context).pushNamed("/singnUpScreen"),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "CADASTRE-SE AQUI",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.bungee().fontFamily,
                              fontSize: 10.toScale,
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(2, 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  TextFormField _getCPFOrEMAILNameTextFormField(BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: cpfOrEmailController,
      decoration: new InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: "E-mail ou CPF",
      ),
      validator: (name) {
        if (name!.isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      onSaved: (name) => userBloc.userModel.name = name,
    );
  }

  TextFormField _getPassWordTextFormField(BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: passwordController,
      inputFormatters: [new LengthLimitingTextInputFormatter(14)],
      autocorrect: false,
      decoration: new InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: "Senha",
        suffixIcon: Padding(
          padding: EdgeInsets.only(), // add padding to adjust icon
          child: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              if (userBloc.obscure == true) {
                userBloc.obscurePass(false);
              } else {
                userBloc.obscurePass(true);
              }
            },
          ),
        ),
      ),
      obscureText: userBloc.obscure,
      enabled: true,
      validator: (senha) {
        if (senha!.isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      onSaved: (pass) => userBloc.userModel.pass = pass,
    );
  }

  SizedBox _getSpace({required double size}) {
    return SizedBox(
      height: size.toScale,
    );
  }

  // ignore: deprecated_member_use
  Container getButton(String text, VoidCallback? function) {
    return Container(
      width: 200.toScale,
      height: 45.toScale,
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: Theme.of(context).primaryColor,
        onPressed: function == null ? () {} : function,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
