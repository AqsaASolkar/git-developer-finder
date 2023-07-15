import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/core/request_params/request_params.dart';

import '../core/dio/dio_client.dart';
import 'app_service_impl.dart';

final apiClientProvider =
    Provider<ApiClient>((ref) => ApiClientImpl(dio: ref.watch(dioProvider)));
abstract class ApiClient {
  Future<Either<Failure, Response>> get(
      {required String path, RequestParams? queryParams, Options? options});

  Future<Either<Failure, Response>> post(
      {required String path, RequestParams? queryParams, Options? options});
}
