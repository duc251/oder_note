import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable{
  const  WeatherEvent();
  @override
  List<Object> get props => [];
}

class WeatherDailyEvent extends WeatherEvent{
  const  WeatherDailyEvent();
  @override
  List<Object> get props=>[];
}