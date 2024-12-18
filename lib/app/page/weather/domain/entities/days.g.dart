// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaysImpl _$$DaysImplFromJson(Map<String, dynamic> json) => _$DaysImpl(
      datetime: json['datetime'] as String? ?? "",
      tempmax: json['tempmax'] as num?,
      tempmin: json['tempmin'] as num?,
      feelslikemax: json['feelslikemax'] as num?,
      feelslikemin: json['feelslikemin'] as num?,
      feelslike: json['feelslike'] as num?,
      dew: json['dew'] as num?,
      humidity: json['humidity'] as num?,
      precip: json['precip'] as num?,
      precipprob: json['precipprob'] as num?,
      precipcover: json['precipcover'] as num?,
      pressure: json['pressure'] as num?,
      visibility: json['visibility'] as num?,
      uvindex: json['uvindex'] as num?,
      temp: (json['temp'] as num?)?.toDouble(),
      conditions: json['conditions'] as String? ?? "",
      description: json['description'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
      sunrise: json['sunrise'] as String? ?? "",
      sunset: json['sunset'] as String? ?? "",
      hours: (json['hours'] as List<dynamic>?)
              ?.map((e) => Hours.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DaysImplToJson(_$DaysImpl instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'feelslikemax': instance.feelslikemax,
      'feelslikemin': instance.feelslikemin,
      'feelslike': instance.feelslike,
      'dew': instance.dew,
      'humidity': instance.humidity,
      'precip': instance.precip,
      'precipprob': instance.precipprob,
      'precipcover': instance.precipcover,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'uvindex': instance.uvindex,
      'temp': instance.temp,
      'conditions': instance.conditions,
      'description': instance.description,
      'icon': instance.icon,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'hours': instance.hours,
    };

_$HoursImpl _$$HoursImplFromJson(Map<String, dynamic> json) => _$HoursImpl(
      conditions: json['conditions'] as String? ?? "",
      temp: (json['temp'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      datetime: json['datetime'] as String? ?? "",
      icon: json['icon'] as String? ?? "",
    );

Map<String, dynamic> _$$HoursImplToJson(_$HoursImpl instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'datetime': instance.datetime,
      'icon': instance.icon,
    };
