import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_model.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_response.dart';
import 'package:oder_note/app/page/weather/data/services/weather_service.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';

abstract class WeatherDailyDataSource{
  Future<WeatherDaily> getWeatherDaily();
}
@Injectable(as: WeatherDailyDataSource)
class WeatherDailyDataSourceImpl extends WeatherDailyDataSource{
  final WeatherService _weatherService;
  WeatherDailyDataSourceImpl (this._weatherService);
  @override 
  Future<WeatherDaily> getWeatherDaily(){
    return _weatherService.getWeatherDaily();
  }

  
}