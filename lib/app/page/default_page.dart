
import 'package:flutter/material.dart';
import 'package:oder_note/core/globals/logger.dart';


class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger.info('build: DefaultPage'); //ghi lại log

    return const Scaffold(
      body: Center(child: Text('DefaultPage')),
    );
  }
}
