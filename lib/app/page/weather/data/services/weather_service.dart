import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_model.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';
import 'package:oder_note/core/utils/apis.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_service.g.dart';

@RestApi()

@injectable
abstract class WeatherService {
  @factoryMethod
  factory WeatherService(@Named(Apis.dioWithToken) Dio dio) =
      _WeatherService;

  @GET('https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/hanoi?unitGroup=metric&key=8QVU7QPZ8VYTYMGGVJR7YDMS2&contentType=json')
  Future<WeatherDaily> getWeatherDaily();
}
