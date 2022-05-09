import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:my_event_app/interceptor/interceptor.dart';
import 'package:my_event_app/models/user_model.dart';

class UserService {
  Future<bool> createUser(BuildContext context, UserModel userModel) async {
    try {
      
      final response = await getDio(context).post("user-ws/create-user",
        queryParameters: {
        "name": userModel.name,
        "email": userModel.email,
        "Id": userModel.id,
        "pass": userModel.pass,
        "lastName": userModel.lastName,
        "cpf": userModel.cpf,
        "confirmPass": userModel.confirmPass,
        });

      if (response.data["status"].compareTo("error") == 0) {
        throw Future.value(false);
      }

      return Future.value(true);
    } on DioError catch (e) {
      throw e;
    }
  }
}
