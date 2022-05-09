import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UnderContructionScreen extends StatelessWidget {
  const UnderContructionScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   backgroundColor: Theme.of(context).primaryColor,
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/images/loading.gif",
              ),
            ),
            Container(
              child: Text(
                'Page Under Construction',
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
