import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oder_note/app/page/weather/domain/entities/days.dart';

part 'weather_daily.freezed.dart';
part 'weather_daily.g.dart';

@freezed
class WeatherDaily with _$WeatherDaily{
  const factory WeatherDaily({
  //@Default(0) int queryCost,
  //@Default(0) int latitude,
  //@Default(0) int longitude,
   @Default("") String resolvedAddress,
   @Default("") String address,
   @Default("") String timezone,
   @Default([]) List<Days> days,
   //@Default(0) int tzoffset,
   @Default("") String description
  })= _WeatherDaily;
  factory WeatherDaily.fromJson(Map<String, dynamic>json)=> 
  _$WeatherDailyFromJson(json);
}