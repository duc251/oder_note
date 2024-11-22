import 'package:dartz/dartz.dart';
import 'package:oder_note/core/error/failure.dart';

abstract class UseCase<Type, Params>{
  Future<Either<Failure, Type>> call(Params param);
}