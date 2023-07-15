import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../core/dio/custom_interceptor.dart';

@module
abstract class AppModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://api.github.com/';
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url, CustomInterceptor interceptor) {
    var options = BaseOptions(
      baseUrl: url,
    );
    var dio = Dio(options);
    dio.interceptors.add(interceptor);
    return dio;
  }
}
