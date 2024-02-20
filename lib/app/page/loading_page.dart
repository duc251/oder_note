
import 'package:flutter/material.dart';
import 'package:oder_note/core/globals/logger.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger.info('build: LoadingPage');

    return const Scaffold(
      body: Center(child: Text('LoadingPage')),
    );
  }
}
