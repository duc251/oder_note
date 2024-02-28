// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationState {
  BottomBarEnum get bottomBarEnum => throw _privateConstructorUsedError;
  Widget get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call({BottomBarEnum bottomBarEnum, Widget page});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomBarEnum = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      bottomBarEnum: null == bottomBarEnum
          ? _value.bottomBarEnum
          : bottomBarEnum // ignore: cast_nullable_to_non_nullable
              as BottomBarEnum,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavigationStateImplCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$BottomNavigationStateImplCopyWith(
          _$BottomNavigationStateImpl value,
          $Res Function(_$BottomNavigationStateImpl) then) =
      __$$BottomNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BottomBarEnum bottomBarEnum, Widget page});
}

/// @nodoc
class __$$BottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$BottomNavigationStateImpl>
    implements _$$BottomNavigationStateImplCopyWith<$Res> {
  __$$BottomNavigationStateImplCopyWithImpl(_$BottomNavigationStateImpl _value,
      $Res Function(_$BottomNavigationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomBarEnum = null,
    Object? page = null,
  }) {
    return _then(_$BottomNavigationStateImpl(
      bottomBarEnum: null == bottomBarEnum
          ? _value.bottomBarEnum
          : bottomBarEnum // ignore: cast_nullable_to_non_nullable
              as BottomBarEnum,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$BottomNavigationStateImpl implements _BottomNavigationState {
  _$BottomNavigationStateImpl(
      {required this.bottomBarEnum, required this.page});

  @override
  final BottomBarEnum bottomBarEnum;
  @override
  final Widget page;

  @override
  String toString() {
    return 'BottomNavigationState(bottomBarEnum: $bottomBarEnum, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationStateImpl &&
            (identical(other.bottomBarEnum, bottomBarEnum) ||
                other.bottomBarEnum == bottomBarEnum) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomBarEnum, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => __$$BottomNavigationStateImplCopyWithImpl<
          _$BottomNavigationStateImpl>(this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  factory _BottomNavigationState(
      {required final BottomBarEnum bottomBarEnum,
      required final Widget page}) = _$BottomNavigationStateImpl;

  @override
  BottomBarEnum get bottomBarEnum;
  @override
  Widget get page;
  @override
  @JsonKey(ignore: true)
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
