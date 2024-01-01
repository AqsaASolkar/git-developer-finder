import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:git_developer_search_app/core/error/error_code_handling.dart';
import 'package:git_developer_search_app/core/error/failure.dart';
import 'package:git_developer_search_app/core/request_params/request_params.dart';
import 'package:git_developer_search_app/service/app_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ApiClient)
class ApiClientImpl extends ApiClient {
  final Dio _dio;
  ApiClientImpl({required Dio dio}) : _dio = dio; //initializer list

  @override
  Future<Either<Failure, Response>> get(
      {required String path,
      RequestParams? queryParams,
      Options? options}) async {
    try {
      var response =
          await _dio.get(path, queryParameters: queryParams?.toJson());
      return errorCodeHandling(response);
    } on DioException catch (e) {
      return Left(Failure.exception(msg: e.message!));
    } catch (error) {
      return Left(Failure.exception(msg: error.toString()));
    }
  }

  @override
  Future<Either<Failure, Response>> post(
      {required String path,
      RequestParams? queryParams,
      Options? options}) async {
    try {
      var response = await _dio.post(path, data: queryParams?.toJson());
      return errorCodeHandling(response);
    } on DioException catch (e) {
      return Left(Failure.exception(msg: e.message!));
    } catch (error) {
      return Left(Failure.exception(msg: error.toString()));
    }
  }
}
