import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/blocs/user_bloc.dart';
import 'package:my_event_app/main.dart';
import 'package:my_event_app/ui/base/navigation-base_screen.dart';
import 'package:my_event_app/ui/component/dialog/my-event-alert_dialog.dart';
import 'package:my_event_app/ui/component/dialog/term-of-user_dialog.dart';
import 'package:my_event_app/ui/component/load-dialog_component.dart';
import 'package:my_event_app/utils/helper.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen();

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ScrollController scrollController = ScrollController();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<UserBloc>(
      builder: (_, userBloc, __) {
        return WillPopScope(
          onWillPop: () => Future.value(true),
          child: Scaffold(
            body: Form(
              key: formKey,
              child: RawScrollbar(
                controller: scrollController,
                thumbColor: Theme.of(context).primaryColor,
                isAlwaysShown: true,
                child: ListView(
                  controller: scrollController,
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(20.toScale, 0, 20.toScale, 0),
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              _getSpace(size: 50),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                        'assets/images/main-logo.png'),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 22.toScale),
                                        child: Text(
                                          "CADASTRO",
                                          style: TextStyle(
                                            fontSize: 36,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontFamily:
                                                GoogleFonts.bungee().fontFamily,
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
                                      InkWell(
                                        onTap: () => Navigator.of(context)
                                            .pop(this.widget),
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: 18.toScale),
                                          child: Icon(
                                            Icons.arrow_back,
                                            color:
                                                Theme.of(context).primaryColor,
                                            textDirection: TextDirection.ltr,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 22.toScale, top: 5),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            115,
                                            63,
                                            151,
                                            76,
                                          ),
                                          fontFamily:
                                              GoogleFonts.bungee().fontFamily,
                                          fontSize: 10,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text:
                                                "PREPARE-SE PARA CURTIR MUITO\n",
                                          ),
                                          TextSpan(
                                            text: "COM A GENTE!!",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    _getNameTextFormField(context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getLastNameTextFormField(
                                        context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getCPFTextFormField(context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getEmailTextFormField(context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getPassWordTextFormField(
                                        context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getPassWordConfirmTextFormField(
                                        context, userBloc),
                                    _getSpace(size: 8.toScale),
                                    _getTermOfUserCheckBox(userBloc),
                                    _getSpace(size: 25.toScale),
                                    getButton("Enviar", () async {
                                      _createUser(userBloc);
                                    }),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _createUser(UserBloc userBloc) {
    if (formKey.currentState!.validate()) {
      if (!userBloc.acceptedTheUseOfTerm) {
        showDialog(
            context: context,
            builder: (_) => MyEventAlertDialog(
                image: Image.asset('assets/images/warning-icon.png'),
                title: "Alerta",
                text:
                    "Ops!! Percebemos que você não aceitou nossos termos de uso. Por favor, leia e aceite para continuar.",
                onSuccess: null));
        return;
      }

      userBloc.userModel.name = this.nameController.text;
      userBloc.userModel.lastName = this.lastNameController.text;
      userBloc.userModel.cpf = this.cpfController.text;
      userBloc.userModel.email = this.emailController.text;
      userBloc.userModel.pass = this.passwordController.text;
      userBloc.userModel.confirmPass = this.passwordConfirmController.text;

      showProgressDialogComponent(context);

      userBloc.createUser(
          context: context,
         onSuccess:  () {
             dimissProgressDialogComponent(context);
            return Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => NavigationBaseScreen(),
              ),
              (route) => false);
          },
          onFail: () {
            dimissProgressDialogComponent(context);
            return showDialog(
              context: context,
              builder: (_) => MyEventAlertDialog(
                  image: Image.asset('assets/images/error-icon.png'), 
                  title: "Falha ao Executar a Ação",
                  text:
                      "Ops!! Infelizmente não foi possível realizar esta ação. Verifique se esta conectado a Internet, se o problema persistir entre em contato com nosso suporte.",
                  onSuccess: null));
          });
    }
  }

  SizedBox _getSpace({required double size}) {
    return SizedBox(
      height: size.toScale,
    );
  }

  TextFormField _getNameTextFormField(BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: nameController,
      decoration: new InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: "Nome",
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

  TextFormField _getLastNameTextFormField(
      BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: lastNameController,
      decoration: new InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: "Sobrenome",
      ),
      validator: (lastName) {
        if (lastName!.isEmpty) {
          return "Campo obrigatório";
        }
        return null;
      },
      onSaved: (lastName) => userBloc.userModel.lastName = lastName,
    );
  }

  TextFormField _getCPFTextFormField(BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: cpfController,
      keyboardType: TextInputType.number,
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
        labelText: "CPF",
      ),
      validator: (federalIdentification) {
        if (!validateCpf(federalIdentification!)) {
          return "CPF inválido";
        }
        return null;
      },
      onSaved: (federalIdentification) =>
          userBloc.userModel.cpf = federalIdentification,
    );
  }

  TextFormField _getEmailTextFormField(
      BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: new InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelText: "E-mail",
      ),
      validator: (email) {
        if (email!.isEmpty) {
          return "Campo obrigatório";
        } else if (!emailValid(email)) {
          return "Email inválido";
        }
        return null;
      },
      onSaved: (email) => userBloc.userModel.email = email,
    );
  }

  TextFormField _getPassWordTextFormField(
      BuildContext context, UserBloc userBloc) {
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

        if (senha.compareTo(passwordConfirmController.text) == 1) {
          return "As senhas devem ser as iguais!";
        }

        return null;
      },
      onSaved: (pass) => userBloc.userModel.pass = pass,
    );
  }

  TextFormField _getPassWordConfirmTextFormField(
      BuildContext context, UserBloc userBloc) {
    return TextFormField(
      controller: passwordConfirmController,
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
        labelText: "Confirmar senha",
        suffixIcon: Padding(
          padding: EdgeInsets.only(), // add padding to adjust icon
          child: IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              if (userBloc.obscureConfirmPass == true) {
                userBloc.obscurePassConfirm(false);
              } else {
                userBloc.obscurePassConfirm(true);
              }
            },
          ),
        ),
      ),
      obscureText: userBloc.obscureConfirmPass,
      enabled: true,
      validator: (senha) {
        if (senha!.isEmpty) {
          return "Campo obrigatório";
        }

        if (senha.compareTo(passwordController.text) == 1) {
          return "As senhas devem ser as iguais!";
        }

        return null;
      },
      onSaved: (pass) => userBloc.userModel.pass = pass,
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

  Widget _getTermOfUserCheckBox(UserBloc userBloc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Checkbox(
                    value: userBloc.acceptedTheUseOfTerm,
                    onChanged: (value) {
                      userBloc.setTheValueOfTheTermOfUseCheckBox(value!);
                    },
                    activeColor: Theme.of(context).primaryColor,
                    checkColor: Colors.white,
                  )),
            ],
          ),
        ),
        Text(
          "CONCORDO COM OS ",
          style: TextStyle(
            fontSize: 10,
            fontFamily: GoogleFonts.bungee().fontFamily,
            color: Colors.black,
            fontWeight: FontWeight.normal,
          ),
        ),
        InkWell(
          onTap: () {
            showDialog(context: context, builder: (_) => TermOfUseDialog());
          },
          child: Text(
            "TERMOS DE PRIVACIDADE",
            style: TextStyle(
              fontSize: 10,
              fontFamily: GoogleFonts.bungee().fontFamily,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
