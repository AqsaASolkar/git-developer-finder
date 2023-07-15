import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
 factory Failure.server({required int code, required String msg}) = _Server;
  factory Failure.exception({ int? code, required String msg}) = _Exception;

}
