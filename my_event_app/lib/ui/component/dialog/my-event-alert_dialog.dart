
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/main.dart';

class MyEventAlertDialog extends StatelessWidget {
  const MyEventAlertDialog({
    required this.image,
    required this.title,
    required this.text,
    this.onSuccess});

  final Image image;
  final String title;
  final String text;
  final VoidCallback ?onSuccess;

  @override
  Widget build(BuildContext context) {
    return Dialog( 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 30, 8, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: this.image,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        this.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.toScale,
                          color: Colors.black,
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
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                      alignment: Alignment.center,
                      child: Text(
                        this.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.toScale,
                          color: Colors.black,
                          fontFamily: GoogleFonts.bungee().fontFamily,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100.toScale,
                      height: 45.toScale,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        color: Theme.of(context).primaryColor,
                        onPressed: this.onSuccess != null ? this.onSuccess : () => Navigator.of(context).pop(this),
                        child: Text(
                          "Ok",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}