// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherDaily _$WeatherDailyFromJson(Map<String, dynamic> json) {
  return _WeatherDaily.fromJson(json);
}

/// @nodoc
mixin _$WeatherDaily {
//@Default(0) int queryCost,
//@Default(0) int latitude,
//@Default(0) int longitude,
  String get resolvedAddress => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  List<Days> get days =>
      throw _privateConstructorUsedError; //@Default(0) int tzoffset,
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyCopyWith<WeatherDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyCopyWith<$Res> {
  factory $WeatherDailyCopyWith(
          WeatherDaily value, $Res Function(WeatherDaily) then) =
      _$WeatherDailyCopyWithImpl<$Res, WeatherDaily>;
  @useResult
  $Res call(
      {String resolvedAddress,
      String address,
      String timezone,
      List<Days> days,
      String description});
}

/// @nodoc
class _$WeatherDailyCopyWithImpl<$Res, $Val extends WeatherDaily>
    implements $WeatherDailyCopyWith<$Res> {
  _$WeatherDailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolvedAddress = null,
    Object? address = null,
    Object? timezone = null,
    Object? days = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Days>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDailyImplCopyWith<$Res>
    implements $WeatherDailyCopyWith<$Res> {
  factory _$$WeatherDailyImplCopyWith(
          _$WeatherDailyImpl value, $Res Function(_$WeatherDailyImpl) then) =
      __$$WeatherDailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String resolvedAddress,
      String address,
      String timezone,
      List<Days> days,
      String description});
}

/// @nodoc
class __$$WeatherDailyImplCopyWithImpl<$Res>
    extends _$WeatherDailyCopyWithImpl<$Res, _$WeatherDailyImpl>
    implements _$$WeatherDailyImplCopyWith<$Res> {
  __$$WeatherDailyImplCopyWithImpl(
      _$WeatherDailyImpl _value, $Res Function(_$WeatherDailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resolvedAddress = null,
    Object? address = null,
    Object? timezone = null,
    Object? days = null,
    Object? description = null,
  }) {
    return _then(_$WeatherDailyImpl(
      resolvedAddress: null == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Days>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDailyImpl implements _WeatherDaily {
  const _$WeatherDailyImpl(
      {this.resolvedAddress = "",
      this.address = "",
      this.timezone = "",
      final List<Days> days = const [],
      this.description = ""})
      : _days = days;

  factory _$WeatherDailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDailyImplFromJson(json);

//@Default(0) int queryCost,
//@Default(0) int latitude,
//@Default(0) int longitude,
  @override
  @JsonKey()
  final String resolvedAddress;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String timezone;
  final List<Days> _days;
  @override
  @JsonKey()
  List<Days> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

//@Default(0) int tzoffset,
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'WeatherDaily(resolvedAddress: $resolvedAddress, address: $address, timezone: $timezone, days: $days, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDailyImpl &&
            (identical(other.resolvedAddress, resolvedAddress) ||
                other.resolvedAddress == resolvedAddress) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resolvedAddress, address,
      timezone, const DeepCollectionEquality().hash(_days), description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDailyImplCopyWith<_$WeatherDailyImpl> get copyWith =>
      __$$WeatherDailyImplCopyWithImpl<_$WeatherDailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDailyImplToJson(
      this,
    );
  }
}

abstract class _WeatherDaily implements WeatherDaily {
  const factory _WeatherDaily(
      {final String resolvedAddress,
      final String address,
      final String timezone,
      final List<Days> days,
      final String description}) = _$WeatherDailyImpl;

  factory _WeatherDaily.fromJson(Map<String, dynamic> json) =
      _$WeatherDailyImpl.fromJson;

  @override //@Default(0) int queryCost,
//@Default(0) int latitude,
//@Default(0) int longitude,
  String get resolvedAddress;
  @override
  String get address;
  @override
  String get timezone;
  @override
  List<Days> get days;
  @override //@Default(0) int tzoffset,
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDailyImplCopyWith<_$WeatherDailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
