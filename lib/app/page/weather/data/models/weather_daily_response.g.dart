// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_daily_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDailyResponse _$WeatherDailyResponseFromJson(
        Map<String, dynamic> json) =>
    WeatherDailyResponse(
      queryCost: json['queryCost'] as num,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      resolvedAddress: json['resolvedAddress'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$WeatherDailyResponseToJson(
        WeatherDailyResponse instance) =>
    <String, dynamic>{
      'queryCost': instance.queryCost,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
    };
