import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/user.dart';

part 'search_user_model.freezed.dart';
part 'search_user_model.g.dart';

@unfreezed
class SearchUserModel with _$SearchUserModel {
  const SearchUserModel._();
  factory SearchUserModel({
    @JsonKey(name: "items") List<User>? userList,
    @JsonKey(name: "incomplete_results") bool? incompleteResults,
    @JsonKey(name: "total_count") int? totalCount,
  }) = _SearchUserModel;
  factory SearchUserModel.fromJson(Map<String, dynamic> json) =>
      _$SearchUserModelFromJson(json);
}
