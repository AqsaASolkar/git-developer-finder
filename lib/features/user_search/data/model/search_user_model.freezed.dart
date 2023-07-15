// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchUserModel _$SearchUserModelFromJson(Map<String, dynamic> json) {
  return _SearchUserModel.fromJson(json);
}

/// @nodoc
mixin _$SearchUserModel {
  @JsonKey(name: "items")
  List<User>? get userList => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  set userList(List<User>? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "incomplete_results")
  bool? get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: "incomplete_results")
  set incompleteResults(bool? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: "total_count")
  set totalCount(int? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchUserModelCopyWith<SearchUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserModelCopyWith<$Res> {
  factory $SearchUserModelCopyWith(
          SearchUserModel value, $Res Function(SearchUserModel) then) =
      _$SearchUserModelCopyWithImpl<$Res, SearchUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<User>? userList,
      @JsonKey(name: "incomplete_results") bool? incompleteResults,
      @JsonKey(name: "total_count") int? totalCount});
}

/// @nodoc
class _$SearchUserModelCopyWithImpl<$Res, $Val extends SearchUserModel>
    implements $SearchUserModelCopyWith<$Res> {
  _$SearchUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = freezed,
    Object? incompleteResults = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      userList: freezed == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchUserModelCopyWith<$Res>
    implements $SearchUserModelCopyWith<$Res> {
  factory _$$_SearchUserModelCopyWith(
          _$_SearchUserModel value, $Res Function(_$_SearchUserModel) then) =
      __$$_SearchUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "items") List<User>? userList,
      @JsonKey(name: "incomplete_results") bool? incompleteResults,
      @JsonKey(name: "total_count") int? totalCount});
}

/// @nodoc
class __$$_SearchUserModelCopyWithImpl<$Res>
    extends _$SearchUserModelCopyWithImpl<$Res, _$_SearchUserModel>
    implements _$$_SearchUserModelCopyWith<$Res> {
  __$$_SearchUserModelCopyWithImpl(
      _$_SearchUserModel _value, $Res Function(_$_SearchUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userList = freezed,
    Object? incompleteResults = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$_SearchUserModel(
      userList: freezed == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      incompleteResults: freezed == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchUserModel extends _SearchUserModel {
  _$_SearchUserModel(
      {@JsonKey(name: "items") this.userList,
      @JsonKey(name: "incomplete_results") this.incompleteResults,
      @JsonKey(name: "total_count") this.totalCount})
      : super._();

  factory _$_SearchUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchUserModelFromJson(json);

  @override
  @JsonKey(name: "items")
  List<User>? userList;
  @override
  @JsonKey(name: "incomplete_results")
  bool? incompleteResults;
  @override
  @JsonKey(name: "total_count")
  int? totalCount;

  @override
  String toString() {
    return 'SearchUserModel(userList: $userList, incompleteResults: $incompleteResults, totalCount: $totalCount)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchUserModelCopyWith<_$_SearchUserModel> get copyWith =>
      __$$_SearchUserModelCopyWithImpl<_$_SearchUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchUserModelToJson(
      this,
    );
  }
}

abstract class _SearchUserModel extends SearchUserModel {
  factory _SearchUserModel(
      {@JsonKey(name: "items") List<User>? userList,
      @JsonKey(name: "incomplete_results") bool? incompleteResults,
      @JsonKey(name: "total_count") int? totalCount}) = _$_SearchUserModel;
  _SearchUserModel._() : super._();

  factory _SearchUserModel.fromJson(Map<String, dynamic> json) =
      _$_SearchUserModel.fromJson;

  @override
  @JsonKey(name: "items")
  List<User>? get userList;
  @JsonKey(name: "items")
  set userList(List<User>? value);
  @override
  @JsonKey(name: "incomplete_results")
  bool? get incompleteResults;
  @JsonKey(name: "incomplete_results")
  set incompleteResults(bool? value);
  @override
  @JsonKey(name: "total_count")
  int? get totalCount;
  @JsonKey(name: "total_count")
  set totalCount(int? value);
  @override
  @JsonKey(ignore: true)
  _$$_SearchUserModelCopyWith<_$_SearchUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
