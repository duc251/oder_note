// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDailyImpl _$$WeatherDailyImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDailyImpl(
      resolvedAddress: json['resolvedAddress'] as String? ?? "",
      address: json['address'] as String? ?? "",
      timezone: json['timezone'] as String? ?? "",
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => Days.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$WeatherDailyImplToJson(_$WeatherDailyImpl instance) =>
    <String, dynamic>{
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
      'timezone': instance.timezone,
      'days': instance.days,
      'description': instance.description,
    };
