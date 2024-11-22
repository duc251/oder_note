import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/page/default_page.dart';
import 'package:oder_note/app/page/error_page.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:oder_note/app/page/home/presentation/page/home_page.dart';
import 'package:oder_note/app/page/loading_page.dart';
import 'package:oder_note/app/page/main_page.dart';
import 'package:oder_note/app/page/note/note.dart';
import 'package:oder_note/app/page/weather/bloc/weather_bloc.dart';
import 'package:oder_note/app/page/weather/domain/entities/weather_daily.dart';
import 'package:oder_note/app/page/weather/weather_screen.dart';
import 'package:oder_note/app/page/welcome_page.dart';
import 'package:oder_note/app/utilities/page_buider.dart';
import 'package:oder_note/di/injection.dart';

class AppRoutes {
  AppRoutes._();
  static const defaultPage = '/';
  static const errorPage = '/error';
  static const loadingPage = '/loading';
  static const loginPage = '/login';
  static const mainPage = '/main';
  static const homeSearchPage = '/main/search';
  static const registerPage = '/register';
  static const splashPage = '/splash';
  static const welcomePage = '/welcome';
  static const homePage = '/home';
  static const note = '/note';
  static const weatherDaily = '/weatherdaily';

  static Route<dynamic> generateAppRoute(RouteSettings settings) {
    Widget page = DefaultPage();
    //trả về các màn hình dựa trên routersett
    switch (settings.name) {
      case errorPage:
        page = const ErrorPage();
        break;
      //xác đing giá trị setting / tên màn hình muốn xây dựng

      case loadingPage:
        page = const LoadingPage();
        break;
      case welcomePage:
        page = const WelcomePage();
        break;
      case mainPage:
        page = const ManinPage();
        break;
      case homePage:
        page = MultiBlocProvider(
          providers: [
            BlocProvider<BottomNavigationBloc>(
                create: (BuildContext context) => BottomNavigationBloc())
          ],
          child: HomePage(arguments: settings.arguments),
        );
        break;
      case note:
        page = const NoteOder();
        break;
      case weatherDaily:
        page = BlocProvider(
          create: (context) => getIt<WeatherBloc>(),
          child: const WeatherScreen(),
        );
        break;
      //  return PageBuilder(const LoadingPage(), settings);
      // case loginPage:
      //   return PageBuilder(const LoginPage(), settings);
      // case mainPage:
      //   return PageBuilder(const MainPage(), settings);
      // case registerPage:
      //   return PageBuilder(const RegisterPage(), settings);
      // case splashPage:
      //   return PageBuilder(const SplashPage(), settings);

      //return PageBuilder(const WelcomePage(), settings);
      // default:
      //   return PageBuilder(const DefaultPage(), settings);
    }
    return MaterialPageBuilder(page, settings: settings);
  }
}
