// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDailyModelImpl _$$WeatherDailyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherDailyModelImpl(
      queryCost: json['queryCost'] as num? ?? 0,
      latitude: json['latitude'] as num? ?? 0,
      longitude: json['longitude'] as num? ?? 0,
      resolvedAddress: json['resolvedAddress'] as String? ?? "",
      address: json['address'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$WeatherDailyModelImplToJson(
        _$WeatherDailyModelImpl instance) =>
    <String, dynamic>{
      'queryCost': instance.queryCost,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
      'description': instance.description,
    };
