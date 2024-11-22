import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';
@freezed
class Failure with _$Failure {
  factory Failure.server(String message) = _FailureFromServer;
  factory Failure.cache(String  message) = _FailureFromCache;
  factory Failure.noConnectionDefault()=>
  Failure.noConnection("no Connection");
  factory Failure.noConnection(String message) = _FailureNoConnection;
  }