import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_event_app/ui/base/navigation-base_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      // Navigator.of(context).popAndPushNamed("/loginOptionScreen");
      Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (_) => NavigationBaseScreen(),
              ),
              (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/logo_white.png",
              ),
            ),
            Container(
              child: Text(
                'The Event',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
