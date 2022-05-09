import 'package:flutter/material.dart';
import 'package:my_event_app/ui/component/dialog/progress_dialog.dart';

Future<void> showProgressDialogComponent(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(dialogBackgroundColor: Colors.transparent.withOpacity(0)),
      child: Center(child: ProgressDialog()),
    ),
  );
}

void dimissProgressDialogComponent(BuildContext context) {
  Navigator.pop(context);
}
