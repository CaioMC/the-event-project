import 'package:flutter/material.dart';

class FilterBloc extends ChangeNotifier {

  bool selectedStyleFilterButton = true;
  bool selectedLGBTQIAButton = false;

  void setSeletedButton(String buttonTitle) {
    if (buttonTitle.compareTo("Estilo") == 0) {
      this.selectedStyleFilterButton = true;
      this.selectedLGBTQIAButton = false;
    } else if (buttonTitle.compareTo("LGBTQIA+") == 0) {
      this.selectedStyleFilterButton = false;
      this.selectedLGBTQIAButton = true;
    }
    notifyListeners();
  }
}
