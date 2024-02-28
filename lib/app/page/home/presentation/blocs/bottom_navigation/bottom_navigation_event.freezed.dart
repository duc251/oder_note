// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int pageIndex) changedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int pageIndex)? changedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int pageIndex)? changedPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationInitialEvent value) initial,
    required TResult Function(_BottomNavigationChangedPageEvent value)
        changedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BottomNavigationInitialEvent value)? initial,
    TResult? Function(_BottomNavigationChangedPageEvent value)? changedPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationInitialEvent value)? initial,
    TResult Function(_BottomNavigationChangedPageEvent value)? changedPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BottomNavigationInitialEventImplCopyWith<$Res> {
  factory _$$BottomNavigationInitialEventImplCopyWith(
          _$BottomNavigationInitialEventImpl value,
          $Res Function(_$BottomNavigationInitialEventImpl) then) =
      __$$BottomNavigationInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BottomNavigationInitialEventImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res,
        _$BottomNavigationInitialEventImpl>
    implements _$$BottomNavigationInitialEventImplCopyWith<$Res> {
  __$$BottomNavigationInitialEventImplCopyWithImpl(
      _$BottomNavigationInitialEventImpl _value,
      $Res Function(_$BottomNavigationInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BottomNavigationInitialEventImpl
    implements _BottomNavigationInitialEvent {
  _$BottomNavigationInitialEventImpl();

  @override
  String toString() {
    return 'BottomNavigationEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int pageIndex) changedPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int pageIndex)? changedPage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int pageIndex)? changedPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationInitialEvent value) initial,
    required TResult Function(_BottomNavigationChangedPageEvent value)
        changedPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BottomNavigationInitialEvent value)? initial,
    TResult? Function(_BottomNavigationChangedPageEvent value)? changedPage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationInitialEvent value)? initial,
    TResult Function(_BottomNavigationChangedPageEvent value)? changedPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _BottomNavigationInitialEvent implements BottomNavigationEvent {
  factory _BottomNavigationInitialEvent() = _$BottomNavigationInitialEventImpl;
}

/// @nodoc
abstract class _$$BottomNavigationChangedPageEventImplCopyWith<$Res> {
  factory _$$BottomNavigationChangedPageEventImplCopyWith(
          _$BottomNavigationChangedPageEventImpl value,
          $Res Function(_$BottomNavigationChangedPageEventImpl) then) =
      __$$BottomNavigationChangedPageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$BottomNavigationChangedPageEventImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res,
        _$BottomNavigationChangedPageEventImpl>
    implements _$$BottomNavigationChangedPageEventImplCopyWith<$Res> {
  __$$BottomNavigationChangedPageEventImplCopyWithImpl(
      _$BottomNavigationChangedPageEventImpl _value,
      $Res Function(_$BottomNavigationChangedPageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$BottomNavigationChangedPageEventImpl(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomNavigationChangedPageEventImpl
    implements _BottomNavigationChangedPageEvent {
  _$BottomNavigationChangedPageEventImpl({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'BottomNavigationEvent.changedPage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationChangedPageEventImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationChangedPageEventImplCopyWith<
          _$BottomNavigationChangedPageEventImpl>
      get copyWith => __$$BottomNavigationChangedPageEventImplCopyWithImpl<
          _$BottomNavigationChangedPageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int pageIndex) changedPage,
  }) {
    return changedPage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int pageIndex)? changedPage,
  }) {
    return changedPage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int pageIndex)? changedPage,
    required TResult orElse(),
  }) {
    if (changedPage != null) {
      return changedPage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationInitialEvent value) initial,
    required TResult Function(_BottomNavigationChangedPageEvent value)
        changedPage,
  }) {
    return changedPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BottomNavigationInitialEvent value)? initial,
    TResult? Function(_BottomNavigationChangedPageEvent value)? changedPage,
  }) {
    return changedPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationInitialEvent value)? initial,
    TResult Function(_BottomNavigationChangedPageEvent value)? changedPage,
    required TResult orElse(),
  }) {
    if (changedPage != null) {
      return changedPage(this);
    }
    return orElse();
  }
}

abstract class _BottomNavigationChangedPageEvent
    implements BottomNavigationEvent {
  factory _BottomNavigationChangedPageEvent({required final int pageIndex}) =
      _$BottomNavigationChangedPageEventImpl;

  int get pageIndex;
  @JsonKey(ignore: true)
  _$$BottomNavigationChangedPageEventImplCopyWith<
          _$BottomNavigationChangedPageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
