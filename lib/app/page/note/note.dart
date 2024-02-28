import 'package:flutter/material.dart';
import 'package:oder_note/core/globals/logger.dart';

class NoteOder extends StatefulWidget {
  const NoteOder({super.key});

  @override
  State<NoteOder> createState() => _NoteOderState();
}

class _NoteOderState extends State<NoteOder> {
  @override
  Widget build(BuildContext context) {
  Logger.info('build: note');

    return const Scaffold(
      body: Center(child: Text('note')),
    );
  }
}