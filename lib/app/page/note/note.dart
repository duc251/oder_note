import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/page/weather/bloc/weather_bloc.dart';
import 'package:oder_note/app/page/weather/bloc/weather_event.dart';
import 'package:oder_note/core/globals/logger.dart';

class NoteOder extends StatefulWidget {
  const NoteOder({super.key});

  @override
  State<NoteOder> createState() => _NoteOderState();
}

class _NoteOderState extends State<NoteOder> {
   @override
  void initState() {
    context.read<WeatherBloc>().add(const WeatherDailyEvent());
    super.initState();
  
  }
  @override
  Widget build(BuildContext context) {
  Logger.info('build: note');

    return const Scaffold(
      body: Center(child: Text('note')),
    );
  }
}