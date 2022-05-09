import 'package:flutter/material.dart';
import 'package:my_event_app/main.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 70.0.toScale,
          width: 70.0.toScale,
          child: CircularProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            strokeWidth: 10,
          ),
        ),
      ),
    );
  }
}
