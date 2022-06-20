// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  Expanded expand({required Color color, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              expand(color: Colors.red, noteNumber: 1),
              expand(color: Colors.orange, noteNumber: 2),
              expand(color: Colors.yellow, noteNumber: 3),
              expand(color: Colors.green, noteNumber: 4),
              expand(color: Colors.brown, noteNumber: 5),
              expand(color: Colors.indigo, noteNumber: 6),
              expand(color: Colors.purple, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
