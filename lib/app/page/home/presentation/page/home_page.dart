import 'package:flutter/material.dart';
import 'package:oder_note/core/globals/logger.dart';

enum BottomBarEnum{
  dasboard(
  //  appBarSearchTitle: "Home",
  //   appBarSearchRoute: AppRoutes.homeSearchPage,
    currentPageIndex: 0,
    showProfile: true,
  );

  final int currentPageIndex;
  final bool  showProfile;
  
  const BottomBarEnum({
required this.currentPageIndex,
required this.showProfile,
  });
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
   Logger.info('build: Home');
       return const Scaffold(
      body: Center(child: Text('home')),
    );
  }
}