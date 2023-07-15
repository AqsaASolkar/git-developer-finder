// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchUserModel _$$_SearchUserModelFromJson(Map<String, dynamic> json) =>
    _$_SearchUserModel(
      userList: (json['items'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      incompleteResults: json['incomplete_results'] as bool?,
      totalCount: json['total_count'] as int?,
    );

Map<String, dynamic> _$$_SearchUserModelToJson(_$_SearchUserModel instance) =>
    <String, dynamic>{
      'items': instance.userList,
      'incomplete_results': instance.incompleteResults,
      'total_count': instance.totalCount,
    };
