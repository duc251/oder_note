
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/routes/app_routes.dart';
import 'package:oder_note/app/theme/default_theme.dart';
import 'package:oder_note/app/theme/themes.dart';
import 'package:oder_note/core/blocs/app_bloc.dart';
import 'package:oder_note/core/globals/keys.dart';
import 'package:oder_note/core/globals/logger.dart';
import 'package:oder_note/core/globals/variables.dart';
import 'package:oder_note/core/observers/widgets_binding_observer.dart';
import 'package:oder_note/core/repositories/app_repository.dart';
import 'package:oder_note/core/values/app_scale.dart';
import 'package:oder_note/di/injection.dart';
import 'package:oder_note/flavors/build_config.dart';
import 'package:oder_note/flavors/env_config.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final EnvConfig _envConfig = BuildConfig.instance.envConfig;
  NavigatorState get _navigatorState => navigatorKey.currentState!;
  //final appBloc = getIt<A>
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //loggerNoStack.i('build: App$key');
    AppScale(context).init();
    Logger.info('build: app${widget.key}');

    WidgetsBinding.instance.addObserver(WidgetsBindingObserverExt(
        handleResumed: () async => {
              SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
                  systemNavigationBarIconBrightness: Brightness.dark))
            }));

    final repository = getIt<AppRepository>();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppRepository>(create: (context) => repository),
      ],
      child: MultiBlocProvider(
          providers: [
            BlocProvider<AppBloc>(
                create: (context) =>
                    AppBloc(repository)..add(StartedEvent(key: widget.key)))
          ],
          child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
            return MaterialApp(
              //title: Config.appTitle,
              title: _envConfig.appName.toLowerCase(),
              color: primaryColor,
              theme: AppThemeData.instance.light(),
              navigatorKey: navigatorKey,
              navigatorObservers: [routeObserverExt],
              onGenerateRoute: AppRoutes.generateAppRoute,
              debugShowCheckedModeBanner: false,
              darkTheme: AppThemeData.instance.dark(),
              //themeMode: isdarkmode,
              builder: (context, child) {
                return BlocListener<AppBloc, AppState>(
                  listenWhen: (previous, current) =>
                      previous is! LoadSuccessState &&
                      current is LoadSuccessState,
                  listener: (context, state) {
                    if (state is InitialState) {}
                    if (state is InProgressState) {
                      _navigatorState.pushNamedAndRemoveUntil(
                          AppRoutes.welcomePage, (context) => false);
                    }
                    // if (state is LogoutState) {
                    //     _navigatorState.pushNamedAndRemoveUntil(
                    //         AppRoutes.loginPage, (context) => false);
                    //   }
                      if (state is LoadSuccessState) {
                        _navigatorState.pushNamedAndRemoveUntil(
                            AppRoutes.welcomePage, (context) => false);
                      }
                      if (state is LoadFailureState) {
                        _navigatorState.pushNamedAndRemoveUntil(
                            AppRoutes.errorPage, (context) => false);
                      }
                  },
                  child: child,
                );
              },
            );
          })),
    );
  }
}
