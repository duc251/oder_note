import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/app/page/home/presentation/blocs/home/home_event.dart';
import 'package:oder_note/app/page/home/presentation/blocs/home/home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc(): super (HomeState.initial());
}