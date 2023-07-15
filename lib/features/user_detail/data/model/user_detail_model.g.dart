// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailModel _$$_UserDetailModelFromJson(Map<String, dynamic> json) =>
    _$_UserDetailModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDetailModelToJson(_$_UserDetailModel instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
