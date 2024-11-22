import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_daily_response.g.dart';
@JsonSerializable(explicitToJson: true)

class WeatherDailyResponse extends Equatable {
  final num queryCost;
  final num latitude;
  final num longitude;
  final String resolvedAddress;
  final String address;
  const WeatherDailyResponse(
      {required this.queryCost,
      required this.latitude,
      required this.longitude,
      required this.resolvedAddress,
      required this.address});
      @override 
      List<Object?> get props=>[
        queryCost,
        latitude,
        longitude,
        resolvedAddress,
        address,
      ];
      factory  WeatherDailyResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherDailyResponseFromJson(json);
      Map<String, dynamic> toJson()=>_$WeatherDailyResponseToJson(this);
}
