import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'failure.dart';

Either<Failure, Response> errorCodeHandling(Response response) {
  if (response.statusCode == 200) {
    return Right(response);
  } else if (response.statusCode != null &&
      (response.statusCode! >= 400 && response.statusCode! < 500)) {
    return Left(Failure.server(
        code: response.statusCode!, msg: response.statusMessage!));
  } else if (response.statusCode != null && (response.statusCode! == 500)) {
    return Left(Failure.server(
        code: response.statusCode!, msg: 'Internal Server Error'));
  } else {
    return Left(Failure.server(
        code: response.statusCode!, msg: response.statusMessage!));
  }
}
