import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  factory WeatherState({
    WeatherDaily? weatherDaily,
  }) = _WeatherState;

  
  factory WeatherState.initial() {
    return WeatherState();
  }
}
