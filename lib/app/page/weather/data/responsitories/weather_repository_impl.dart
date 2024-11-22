import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/weather/data/data_sources/weather_daily_data_source.dart';
import 'package:oder_note/app/page/weather/data/models/weather_daily_model.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';
import 'package:oder_note/app/page/weather/domain/repositories/weather_repository.dart';
import 'package:oder_note/core/error/exceptions.dart';
import 'package:oder_note/core/error/failure.dart';
import 'package:oder_note/core/network/network_info.dart';

@Injectable(as: WeatherRepository)
class WeatherRepositoryImpl extends WeatherRepository{
final NetworkInfo _networkInfo;
final WeatherDailyDataSource _weatherDailyDataSource;
WeatherRepositoryImpl (this._networkInfo, this._weatherDailyDataSource);
@override 
Future<Either<Failure, WeatherDaily>> getWeatherDaily(
  )async {
    if(await _networkInfo.isConnected){
      try{
        final remoteData =await  _weatherDailyDataSource.getWeatherDaily();
        return Right(remoteData);
      }catch(e){
        return left(HandleApiException.handleError(e));
      }
    }
    return left(Failure.noConnectionDefault());
  }
}