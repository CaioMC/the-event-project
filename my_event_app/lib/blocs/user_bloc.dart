import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_event_app/models/user_model.dart';
import 'package:my_event_app/services/user_service.dart';

class UserBloc extends ChangeNotifier {
  UserService userService = new UserService();
  UserModel userModel = new UserModel();

  bool obscureCurrent = true;
  bool obscure = true;
  bool obscureConfirmPass = true;
  bool acceptedTheUseOfTerm = false;

  Future<bool> createUser({required BuildContext context, Function? onSuccess, Function? onFail}) async {
    try {
      await this.userService.createUser(context, userModel);
      if (onSuccess != null) {
        onSuccess();
      }
    } on DioError catch (e) {
      print(e);
      if (onFail != null) {
        onFail();
      }
    }
    return Future.value();
  }

  obscureCurrentPass(bool value) {
    obscureCurrent = value;
    notifyListeners();
  }

  obscurePass(bool value) {
    obscure = value;
    notifyListeners();
  }

  obscurePassConfirm(bool value) {
    obscureConfirmPass = value;
    notifyListeners();
  }

  void setTheValueOfTheTermOfUseCheckBox(bool value) {
    this.acceptedTheUseOfTerm = value;
    notifyListeners();
  }
}
