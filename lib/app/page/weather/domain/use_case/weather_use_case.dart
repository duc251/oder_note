import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_model.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';
import 'package:oder_note/app/page/weather/domain/repositories/weather_repository.dart';
import 'package:oder_note/core/error/failure.dart';
import 'package:oder_note/core/use_case/use_case.dart';
@injectable
class WeatherUseCase extends UseCase<WeatherDaily, WeatherDailyRequestParams>{
  final WeatherRepository _weatherRepository;

  WeatherUseCase(this._weatherRepository);
  
  @override
  Future<Either<Failure, WeatherDaily>> call(
    WeatherDailyRequestParams params,) {
    return _weatherRepository.getWeatherDaily();
}

}
class  WeatherDailyRequestParams{}