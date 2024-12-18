// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  WeatherDaily? get weatherDaily => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call({WeatherDaily? weatherDaily});

  $WeatherDailyCopyWith<$Res>? get weatherDaily;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherDaily = freezed,
  }) {
    return _then(_value.copyWith(
      weatherDaily: freezed == weatherDaily
          ? _value.weatherDaily
          : weatherDaily // ignore: cast_nullable_to_non_nullable
              as WeatherDaily?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherDailyCopyWith<$Res>? get weatherDaily {
    if (_value.weatherDaily == null) {
      return null;
    }

    return $WeatherDailyCopyWith<$Res>(_value.weatherDaily!, (value) {
      return _then(_value.copyWith(weatherDaily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WeatherDaily? weatherDaily});

  @override
  $WeatherDailyCopyWith<$Res>? get weatherDaily;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherDaily = freezed,
  }) {
    return _then(_$WeatherStateImpl(
      weatherDaily: freezed == weatherDaily
          ? _value.weatherDaily
          : weatherDaily // ignore: cast_nullable_to_non_nullable
              as WeatherDaily?,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl with DiagnosticableTreeMixin implements _WeatherState {
  _$WeatherStateImpl({this.weatherDaily});

  @override
  final WeatherDaily? weatherDaily;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherState(weatherDaily: $weatherDaily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherState'))
      ..add(DiagnosticsProperty('weatherDaily', weatherDaily));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.weatherDaily, weatherDaily) ||
                other.weatherDaily == weatherDaily));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherDaily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  factory _WeatherState({final WeatherDaily? weatherDaily}) =
      _$WeatherStateImpl;

  @override
  WeatherDaily? get weatherDaily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
