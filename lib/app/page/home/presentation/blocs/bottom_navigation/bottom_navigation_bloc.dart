 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_event.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_state.dart';

class BottomNavigationBloc 
extends Bloc<BottomNavigationEvent, BottomNavigationState>{
  BottomNavigationBloc() : super(BottomNavigationState.dasboardPageLoaded()){
    on((
     BottomNavigationEvent event, emit)async => {
      await event.when(
        initial: ()async{
          emit(BottomNavigationState.dasboardPageLoaded());
        },
        changedPage: (index)async{
          switch (index){
            case 0:
            emit (BottomNavigationState.dasboardPageLoaded());
          }
        }
      )
     });
  }
}
