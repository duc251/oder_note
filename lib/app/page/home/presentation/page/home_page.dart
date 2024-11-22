import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:oder_note/app/page/home/presentation/blocs/bottom_navigation/bottom_navigation_state.dart';
import 'package:oder_note/app/page/home/presentation/blocs/home/home_bloc.dart';
import 'package:oder_note/app/page/home/presentation/page/components/bottom_navigation_bar.dart';
import 'package:oder_note/app/routes/app_routes.dart';
import 'package:oder_note/core/globals/logger.dart';

enum BottomBarEnum {
  dasboard(
    appBarSearchTitle: "Home",
    appBarSearchRoute: AppRoutes.homeSearchPage,
    currentPageIndex: 0,
    showProfile: true,
  ),

  weatherScreen(
    appBarSearchTitle: "weather",
    appBarSearchRoute: AppRoutes.homeSearchPage,
    currentPageIndex: 1,
    showProfile: false,
  );

  final String appBarSearchTitle;
  final String appBarSearchRoute;
  final int currentPageIndex;
  final bool showProfile;

  const BottomBarEnum({
    required this.appBarSearchRoute,
    required this.appBarSearchTitle,
    required this.currentPageIndex,
    required this.showProfile,
  });
}

class HomePage extends StatefulWidget {
  final Object? arguments;
  const HomePage({this.arguments, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    final arguments = widget.arguments;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Logger.info('build: Home');
    return _blocBuilder();
    // return BlocBuilder(

    //    builder: (BuildContext context, state) {
    //     return
    //     _blocBuilder();
    //     },);
    //child: _blocBuilder());
    // return NotificationListener(

    //   child: BlocProvider<HomeBloc>(
    //     create: (BuildContext context) => HomeBloc(),
    //     child: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
    //       builder: (context, state){
    //         return WillPopScope(
    //           child: child,
    //           onWillPop: onWillPop)
    //       }),
    //     )

    //   );
  }

  BlocBuilder _blocBuilder() {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (BuildContext context, BottomNavigationState state) {
      final width = MediaQuery.of(context).size.width;
      const backgroundHeight = 608;
      const backgroundWidth = 1541;
      final height = width * backgroundHeight / backgroundWidth;
      return Scaffold(
        //key: _scaff,
        backgroundColor: Colors.white,
        body: state.page,
        
        //bottomNavigationBar: const BottomNaviagtinBar(),
      );
    });
  }
}
