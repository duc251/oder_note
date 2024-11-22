import 'package:dartz/dartz.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_model.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';
import 'package:oder_note/core/error/failure.dart';

abstract class WeatherRepository{
  Future<Either<Failure, WeatherDaily>> getWeatherDaily(
  );
}