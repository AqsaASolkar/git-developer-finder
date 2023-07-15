// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  int? get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String msg) server,
    required TResult Function(int? code, String msg) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String msg)? server,
    TResult? Function(int? code, String msg)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String msg)? server,
    TResult Function(int? code, String msg)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Exception value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Exception value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({int code, String msg});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code!
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String msg});
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$_Server(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Server implements _Server {
  _$_Server({required this.code, required this.msg});

  @override
  final int code;
  @override
  final String msg;

  @override
  String toString() {
    return 'Failure.server(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Server &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      __$$_ServerCopyWithImpl<_$_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String msg) server,
    required TResult Function(int? code, String msg) exception,
  }) {
    return server(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String msg)? server,
    TResult? Function(int? code, String msg)? exception,
  }) {
    return server?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String msg)? server,
    TResult Function(int? code, String msg)? exception,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(code, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Exception value) exception,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Exception value)? exception,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failure {
  factory _Server({required final int code, required final String msg}) =
      _$_Server;

  @override
  int get code;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ServerCopyWith<_$_Server> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExceptionCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_ExceptionCopyWith(
          _$_Exception value, $Res Function(_$_Exception) then) =
      __$$_ExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String msg});
}

/// @nodoc
class __$$_ExceptionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Exception>
    implements _$$_ExceptionCopyWith<$Res> {
  __$$_ExceptionCopyWithImpl(
      _$_Exception _value, $Res Function(_$_Exception) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? msg = null,
  }) {
    return _then(_$_Exception(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Exception implements _Exception {
  _$_Exception({this.code, required this.msg});

  @override
  final int? code;
  @override
  final String msg;

  @override
  String toString() {
    return 'Failure.exception(code: $code, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exception &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExceptionCopyWith<_$_Exception> get copyWith =>
      __$$_ExceptionCopyWithImpl<_$_Exception>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int code, String msg) server,
    required TResult Function(int? code, String msg) exception,
  }) {
    return exception(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int code, String msg)? server,
    TResult? Function(int? code, String msg)? exception,
  }) {
    return exception?.call(code, msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int code, String msg)? server,
    TResult Function(int? code, String msg)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(code, msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Exception value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Exception value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Exception value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class _Exception implements Failure {
  factory _Exception({final int? code, required final String msg}) =
      _$_Exception;

  @override
  int? get code;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$_ExceptionCopyWith<_$_Exception> get copyWith =>
      throw _privateConstructorUsedError;
}
