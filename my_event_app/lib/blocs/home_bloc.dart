import 'package:flutter/material.dart';

class HomeBloc extends ChangeNotifier {
  String _title = "EVENTOS";

  setTitle(String title) {
    this._title = title;
    notifyListeners();
  }

 String getTitle() {
    return this._title.isNotEmpty ? this._title : "EVENTOS";
  }
}
