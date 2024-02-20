
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:oder_note/di/injection.config.dart';
 
final GetIt getIt = GetIt.instance;

@injectableInit
dynamic configureDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
})async{
  $initGetIt(getIt);
}

