import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/main.dart';

class FilterItemComponent extends StatelessWidget {
  final String title;

  const FilterItemComponent({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.toScale)),
      child: Padding(
        padding: EdgeInsets.all(5.toScale),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.toScale),
                    child: Image.asset(
                      "assets/images/wwdc1.png",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                      fontSize: 10.toScale,
                      color: Color(0xFFF939393),
                      fontFamily: GoogleFonts.bungee().fontFamily,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
