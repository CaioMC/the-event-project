import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:my_event_app/utils/settings.dart';

Dio getDio(BuildContext context) {
  Dio dio = new Dio();
  dio.options.baseUrl = Settings.domainLocalWifi;
  dio.interceptors.add(new MyInterceptor(context));
  dio.options.connectTimeout = 60000;
  dio.options.receiveTimeout = 60000;
  return dio;
}

class MyInterceptor extends Interceptor {
  final BuildContext context;
  MyInterceptor(this.context);

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['content-Type'] = 'application/json';
    options.headers["Accept"] = "application/json";
    options.headers['Access-Control-Allow-Origin'] = '*';

    print(options.uri);
    super.onRequest(options, handler);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }
}
