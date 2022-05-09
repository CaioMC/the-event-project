import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/main.dart';

class LoginOptionScreen extends StatefulWidget {
  LoginOptionScreen();

  @override
  _LoginOptionScreenState createState() => _LoginOptionScreenState();
}

class _LoginOptionScreenState extends State<LoginOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Image.asset("assets/images/logo.png", height: 900.toScale),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20.toScale),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 40.0,
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
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.toScale),
                  child: getButton("MyEvent", () => Navigator.of(context).pushNamed("/loginScreen")),
                ), //Button -> MyEvent
                Container(
                  padding: EdgeInsets.only(bottom: 20.toScale),
                  child: getButton("Facebook", () => Navigator.of(context).pushNamed("/underContructionScreen")),
                ), //Button -> Facebook
                Container(
                  padding: EdgeInsets.only(bottom: 20.toScale),
                  child: getButton("Google", () => Navigator.of(context).pushNamed("/underContructionScreen")),
                ), //Button -> Google
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      child: Text(
                        "CADASTRE-SE AQUI!",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: GoogleFonts.bungee().fontFamily,
                          fontSize: 10.toScale,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.grey,
                              blurRadius: 6,
                              offset: Offset(2, 1),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () => Navigator.of(context).pushNamed("/singnUpScreen"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

// ignore: deprecated_member_use
  Container getButton(String text, VoidCallback? function) {
    return Container(
      width: 300,
      height: 45,
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
