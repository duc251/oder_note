import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/weather/bloc/weather_event.dart';
import 'package:oder_note/app/page/weather/bloc/weather_state.dart';
import 'package:oder_note/app/page/weather/domain/use_case/weather_use_case.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState>{
  final WeatherUseCase _weatherRepository;
  WeatherBloc(
    this._weatherRepository,
     ):super(WeatherState.initial()){
      on<WeatherDailyEvent>(_onWeatherDailyEvent);
     }

     FutureOr<void> _onWeatherDailyEvent(
      WeatherDailyEvent event,
      Emitter<WeatherState> emit,
     )async{
      final response = await _weatherRepository.call(WeatherDailyRequestParams());
      response.fold((l)=> l.message,
      (r) => emit((state.copyWith(weatherDaily: r)))
      );
     }
}