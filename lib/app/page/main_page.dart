import 'package:flutter/material.dart';
import 'package:oder_note/core/globals/logger.dart';

class ManinPage extends StatefulWidget {
  const ManinPage({Key? key}) : super(key: key);

  @override
  State<ManinPage> createState() => _ManinPageState();
}

class _ManinPageState extends State<ManinPage> {
  @override
  Widget build(BuildContext context) {
    Logger.info('build: mainpage');

    return const Scaffold(
      body: Center(child: Text('mainpage')),
    );
  }
}