import 'package:flutter/material.dart';

class FadeTransitionBuilder extends PageTransitionsBuilder {
  const FadeTransitionBuilder();

  @override
  Widget buildTransitions<T>(PageRoute<T> route, BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
