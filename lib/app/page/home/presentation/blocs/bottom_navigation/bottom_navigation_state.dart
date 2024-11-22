
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oder_note/app/page/home/presentation/page/home_page.dart';
import 'package:oder_note/app/page/note/note.dart';
import 'package:oder_note/app/page/weather/bloc/weather_bloc.dart';
import 'package:oder_note/app/page/weather/weather_screen.dart';
import 'package:oder_note/di/injection.dart';

part 'bottom_navigation_state.freezed.dart';
 
@freezed

class BottomNavigationState with _$BottomNavigationState{
  factory BottomNavigationState({
    required BottomBarEnum bottomBarEnum,
    required Widget page,
   
  })= _BottomNavigationState;

  factory  BottomNavigationState.dasboardPageLoaded(){
    return BottomNavigationState(
      bottomBarEnum: BottomBarEnum.dasboard,
      page: BlocProvider(
        create: ((context)=> getIt<WeatherBloc>()),
        child: const WeatherScreen(),
      ) 
 
      // page: BlocProvider(
      //   //create: (context)=> getIt<Dash>,
      //   create: (BuildContext context) {  },
      //   child: const NoteOder(),
      //   )
         );
  }
  factory BottomNavigationState.weatherPage(){
    return BottomNavigationState(
      bottomBarEnum: BottomBarEnum.weatherScreen,
      page: BlocProvider(
        create: ((context)=> getIt<WeatherBloc>()),
        child: const WeatherScreen(),
      )  
    );
  }
}