// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      login: json['login'] as String?,
      bio: json['bio'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      url: json['url'] as String?,
      reposUrl: json['repos_url'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      company: json['company'] as String?,
      blog: json['blog'] as String?,
      location: json['location'] as String?,
      publicRepos: json['public_repos'] as int?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'bio': instance.bio,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
      'repos_url': instance.reposUrl,
      'email': instance.email,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'location': instance.location,
      'public_repos': instance.publicRepos,
      'followers': instance.followers,
      'following': instance.following,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
