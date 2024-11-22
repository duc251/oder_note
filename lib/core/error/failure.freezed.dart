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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) cache,
    required TResult Function(String message) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? cache,
    TResult Function(String message)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureFromServer value) server,
    required TResult Function(_FailureFromCache value) cache,
    required TResult Function(_FailureNoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureFromServer value)? server,
    TResult? Function(_FailureFromCache value)? cache,
    TResult? Function(_FailureNoConnection value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureFromServer value)? server,
    TResult Function(_FailureFromCache value)? cache,
    TResult Function(_FailureNoConnection value)? noConnection,
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
  $Res call({String message});
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
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureFromServerImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureFromServerImplCopyWith(_$FailureFromServerImpl value,
          $Res Function(_$FailureFromServerImpl) then) =
      __$$FailureFromServerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureFromServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureFromServerImpl>
    implements _$$FailureFromServerImplCopyWith<$Res> {
  __$$FailureFromServerImplCopyWithImpl(_$FailureFromServerImpl _value,
      $Res Function(_$FailureFromServerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureFromServerImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureFromServerImpl implements _FailureFromServer {
  _$FailureFromServerImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureFromServerImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureFromServerImplCopyWith<_$FailureFromServerImpl> get copyWith =>
      __$$FailureFromServerImplCopyWithImpl<_$FailureFromServerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) cache,
    required TResult Function(String message) noConnection,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? noConnection,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? cache,
    TResult Function(String message)? noConnection,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureFromServer value) server,
    required TResult Function(_FailureFromCache value) cache,
    required TResult Function(_FailureNoConnection value) noConnection,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureFromServer value)? server,
    TResult? Function(_FailureFromCache value)? cache,
    TResult? Function(_FailureNoConnection value)? noConnection,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureFromServer value)? server,
    TResult Function(_FailureFromCache value)? cache,
    TResult Function(_FailureNoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _FailureFromServer implements Failure {
  factory _FailureFromServer(final String message) = _$FailureFromServerImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureFromServerImplCopyWith<_$FailureFromServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureFromCacheImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureFromCacheImplCopyWith(_$FailureFromCacheImpl value,
          $Res Function(_$FailureFromCacheImpl) then) =
      __$$FailureFromCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureFromCacheImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureFromCacheImpl>
    implements _$$FailureFromCacheImplCopyWith<$Res> {
  __$$FailureFromCacheImplCopyWithImpl(_$FailureFromCacheImpl _value,
      $Res Function(_$FailureFromCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureFromCacheImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureFromCacheImpl implements _FailureFromCache {
  _$FailureFromCacheImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureFromCacheImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureFromCacheImplCopyWith<_$FailureFromCacheImpl> get copyWith =>
      __$$FailureFromCacheImplCopyWithImpl<_$FailureFromCacheImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) cache,
    required TResult Function(String message) noConnection,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? noConnection,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? cache,
    TResult Function(String message)? noConnection,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureFromServer value) server,
    required TResult Function(_FailureFromCache value) cache,
    required TResult Function(_FailureNoConnection value) noConnection,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureFromServer value)? server,
    TResult? Function(_FailureFromCache value)? cache,
    TResult? Function(_FailureNoConnection value)? noConnection,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureFromServer value)? server,
    TResult Function(_FailureFromCache value)? cache,
    TResult Function(_FailureNoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _FailureFromCache implements Failure {
  factory _FailureFromCache(final String message) = _$FailureFromCacheImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureFromCacheImplCopyWith<_$FailureFromCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureNoConnectionImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$FailureNoConnectionImplCopyWith(_$FailureNoConnectionImpl value,
          $Res Function(_$FailureNoConnectionImpl) then) =
      __$$FailureNoConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureNoConnectionImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FailureNoConnectionImpl>
    implements _$$FailureNoConnectionImplCopyWith<$Res> {
  __$$FailureNoConnectionImplCopyWithImpl(_$FailureNoConnectionImpl _value,
      $Res Function(_$FailureNoConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureNoConnectionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureNoConnectionImpl implements _FailureNoConnection {
  _$FailureNoConnectionImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.noConnection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureNoConnectionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureNoConnectionImplCopyWith<_$FailureNoConnectionImpl> get copyWith =>
      __$$FailureNoConnectionImplCopyWithImpl<_$FailureNoConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function(String message) cache,
    required TResult Function(String message) noConnection,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? server,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? noConnection,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function(String message)? cache,
    TResult Function(String message)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FailureFromServer value) server,
    required TResult Function(_FailureFromCache value) cache,
    required TResult Function(_FailureNoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FailureFromServer value)? server,
    TResult? Function(_FailureFromCache value)? cache,
    TResult? Function(_FailureNoConnection value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FailureFromServer value)? server,
    TResult Function(_FailureFromCache value)? cache,
    TResult Function(_FailureNoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _FailureNoConnection implements Failure {
  factory _FailureNoConnection(final String message) =
      _$FailureNoConnectionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureNoConnectionImplCopyWith<_$FailureNoConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
