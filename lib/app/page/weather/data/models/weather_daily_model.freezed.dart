// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherDailyModel _$WeatherDailyModelFromJson(Map<String, dynamic> json) {
  return _WeatherDailyModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDailyModel {
  num? get queryCost => throw _privateConstructorUsedError;
  num? get latitude => throw _privateConstructorUsedError;
  num? get longitude => throw _privateConstructorUsedError;
  String? get resolvedAddress => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyModelCopyWith<WeatherDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyModelCopyWith<$Res> {
  factory $WeatherDailyModelCopyWith(
          WeatherDailyModel value, $Res Function(WeatherDailyModel) then) =
      _$WeatherDailyModelCopyWithImpl<$Res, WeatherDailyModel>;
  @useResult
  $Res call(
      {num? queryCost,
      num? latitude,
      num? longitude,
      String? resolvedAddress,
      String? address,
      String? description});
}

/// @nodoc
class _$WeatherDailyModelCopyWithImpl<$Res, $Val extends WeatherDailyModel>
    implements $WeatherDailyModelCopyWith<$Res> {
  _$WeatherDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as num?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      resolvedAddress: freezed == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDailyModelImplCopyWith<$Res>
    implements $WeatherDailyModelCopyWith<$Res> {
  factory _$$WeatherDailyModelImplCopyWith(_$WeatherDailyModelImpl value,
          $Res Function(_$WeatherDailyModelImpl) then) =
      __$$WeatherDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? queryCost,
      num? latitude,
      num? longitude,
      String? resolvedAddress,
      String? address,
      String? description});
}

/// @nodoc
class __$$WeatherDailyModelImplCopyWithImpl<$Res>
    extends _$WeatherDailyModelCopyWithImpl<$Res, _$WeatherDailyModelImpl>
    implements _$$WeatherDailyModelImplCopyWith<$Res> {
  __$$WeatherDailyModelImplCopyWithImpl(_$WeatherDailyModelImpl _value,
      $Res Function(_$WeatherDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryCost = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? resolvedAddress = freezed,
    Object? address = freezed,
    Object? description = freezed,
  }) {
    return _then(_$WeatherDailyModelImpl(
      queryCost: freezed == queryCost
          ? _value.queryCost
          : queryCost // ignore: cast_nullable_to_non_nullable
              as num?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num?,
      resolvedAddress: freezed == resolvedAddress
          ? _value.resolvedAddress
          : resolvedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDailyModelImpl implements _WeatherDailyModel {
  _$WeatherDailyModelImpl(
      {this.queryCost = 0,
      this.latitude = 0,
      this.longitude = 0,
      this.resolvedAddress = "",
      this.address = "",
      this.description = ""});

  factory _$WeatherDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDailyModelImplFromJson(json);

  @override
  @JsonKey()
  final num? queryCost;
  @override
  @JsonKey()
  final num? latitude;
  @override
  @JsonKey()
  final num? longitude;
  @override
  @JsonKey()
  final String? resolvedAddress;
  @override
  @JsonKey()
  final String? address;
  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'WeatherDailyModel(queryCost: $queryCost, latitude: $latitude, longitude: $longitude, resolvedAddress: $resolvedAddress, address: $address, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDailyModelImpl &&
            (identical(other.queryCost, queryCost) ||
                other.queryCost == queryCost) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.resolvedAddress, resolvedAddress) ||
                other.resolvedAddress == resolvedAddress) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queryCost, latitude, longitude,
      resolvedAddress, address, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      __$$WeatherDailyModelImplCopyWithImpl<_$WeatherDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDailyModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherDailyModel implements WeatherDailyModel {
  factory _WeatherDailyModel(
      {final num? queryCost,
      final num? latitude,
      final num? longitude,
      final String? resolvedAddress,
      final String? address,
      final String? description}) = _$WeatherDailyModelImpl;

  factory _WeatherDailyModel.fromJson(Map<String, dynamic> json) =
      _$WeatherDailyModelImpl.fromJson;

  @override
  num? get queryCost;
  @override
  num? get latitude;
  @override
  num? get longitude;
  @override
  String? get resolvedAddress;
  @override
  String? get address;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
