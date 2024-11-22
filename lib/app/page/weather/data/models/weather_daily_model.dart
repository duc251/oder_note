import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_response.dart';

part 'weather_daily_model.freezed.dart';
part 'weather_daily_model.g.dart';

@freezed
class WeatherDailyModel with _$WeatherDailyModel {
  factory WeatherDailyModel({
    @Default(0) num? queryCost,
    @Default(0) num? latitude,
    @Default(0) num? longitude,
    @Default("") String? resolvedAddress,
    @Default("") String? address,
    @Default("") String? description,
  }) = _WeatherDailyModel;
  factory WeatherDailyModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyModelFromJson(json);
}
