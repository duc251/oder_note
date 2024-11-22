
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/my_app.dart';
import 'package:oder_note/core/globals/logger.dart';
import 'package:oder_note/core/observers/bloc_observer_ext.dart';
import 'package:oder_note/di/injection.dart';
import 'package:oder_note/flavors/build_config.dart';
import 'package:oder_note/flavors/env_config.dart';
import 'package:oder_note/flavors/environment.dart';


Future<void> main() async {
   Logger.setup();

  Bloc.observer = BlocObserverExt();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  
  final EnvConfig devConfig = EnvConfig(
    appName: "my app", 
    baseUrl: "", 
    urlWeather:"https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/",
    connectWeb: ""
    );
 
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemStatusBarContrastEnforced: false,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarContrastEnforced: false,
  ));
 BuildConfig.intantiate(envType: Environment.dev, envConfig: devConfig);
  runApp(MyApp(key: Key(devConfig.appName)));
}
