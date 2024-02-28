import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_event.freezed.dart';

@freezed
class BottomNavigationEvent with  _$BottomNavigationEvent {
  factory  BottomNavigationEvent.initial()  = _BottomNavigationInitialEvent;
  factory   BottomNavigationEvent.changedPage({required int pageIndex}) = _BottomNavigationChangedPageEvent;
}