import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../user_search/domain/entity/user.dart';
part 'user_detail_model.freezed.dart';
part 'user_detail_model.g.dart';

@freezed
class UserDetailModel with _$UserDetailModel {
  UserDetailModel._();
  factory UserDetailModel({
    User? user,
  }) = _UserDetailModel;
  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailModelFromJson(json);
}
