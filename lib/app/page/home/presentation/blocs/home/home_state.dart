import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed

class HomeState with _$HomeState {
  factory HomeState({
    @Default("")String uri
  })= _HomeState;
  factory  HomeState.initial()=> HomeState();
}