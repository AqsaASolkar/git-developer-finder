// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'repos_url')
  String? get reposUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "company")
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "blog")
  String? get blog => throw _privateConstructorUsedError;
  @JsonKey(name: "location")
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: "public_repos")
  int? get publicRepos => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers')
  int? get followers => throw _privateConstructorUsedError;
  @JsonKey(name: 'following')
  int? get following => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'repos_url') String? reposUrl,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "blog") String? blog,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "public_repos") int? publicRepos,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'following') int? following,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? bio = freezed,
    Object? avatarUrl = freezed,
    Object? url = freezed,
    Object? reposUrl = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? publicRepos = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'login') String? login,
      @JsonKey(name: 'bio') String? bio,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'repos_url') String? reposUrl,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "company") String? company,
      @JsonKey(name: "blog") String? blog,
      @JsonKey(name: "location") String? location,
      @JsonKey(name: "public_repos") int? publicRepos,
      @JsonKey(name: 'followers') int? followers,
      @JsonKey(name: 'following') int? following,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? bio = freezed,
    Object? avatarUrl = freezed,
    Object? url = freezed,
    Object? reposUrl = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? company = freezed,
    Object? blog = freezed,
    Object? location = freezed,
    Object? publicRepos = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      reposUrl: freezed == reposUrl
          ? _value.reposUrl
          : reposUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      publicRepos: freezed == publicRepos
          ? _value.publicRepos
          : publicRepos // ignore: cast_nullable_to_non_nullable
              as int?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'login') this.login,
      @JsonKey(name: 'bio') this.bio,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'repos_url') this.reposUrl,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "company") this.company,
      @JsonKey(name: "blog") this.blog,
      @JsonKey(name: "location") this.location,
      @JsonKey(name: "public_repos") this.publicRepos,
      @JsonKey(name: 'followers') this.followers,
      @JsonKey(name: 'following') this.following,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'login')
  final String? login;
  @override
  @JsonKey(name: 'bio')
  final String? bio;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'repos_url')
  final String? reposUrl;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "company")
  final String? company;
  @override
  @JsonKey(name: "blog")
  final String? blog;
  @override
  @JsonKey(name: "location")
  final String? location;
  @override
  @JsonKey(name: "public_repos")
  final int? publicRepos;
  @override
  @JsonKey(name: 'followers')
  final int? followers;
  @override
  @JsonKey(name: 'following')
  final int? following;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, login: $login, bio: $bio, avatarUrl: $avatarUrl, url: $url, reposUrl: $reposUrl, email: $email, name: $name, company: $company, blog: $blog, location: $location, publicRepos: $publicRepos, followers: $followers, following: $following, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.publicRepos, publicRepos) ||
                other.publicRepos == publicRepos) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      login,
      bio,
      avatarUrl,
      url,
      reposUrl,
      email,
      name,
      company,
      blog,
      location,
      publicRepos,
      followers,
      following,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'login') final String? login,
      @JsonKey(name: 'bio') final String? bio,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'repos_url') final String? reposUrl,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "company") final String? company,
      @JsonKey(name: "blog") final String? blog,
      @JsonKey(name: "location") final String? location,
      @JsonKey(name: "public_repos") final int? publicRepos,
      @JsonKey(name: 'followers') final int? followers,
      @JsonKey(name: 'following') final int? following,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'login')
  String? get login;
  @override
  @JsonKey(name: 'bio')
  String? get bio;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'repos_url')
  String? get reposUrl;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "company")
  String? get company;
  @override
  @JsonKey(name: "blog")
  String? get blog;
  @override
  @JsonKey(name: "location")
  String? get location;
  @override
  @JsonKey(name: "public_repos")
  int? get publicRepos;
  @override
  @JsonKey(name: 'followers')
  int? get followers;
  @override
  @JsonKey(name: 'following')
  int? get following;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
