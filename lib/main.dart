import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded setKey({required int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        minWidth: double.maxFinite,
        color: Colors.yellowAccent,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              setKey(soundNumber: 1),
              setKey(soundNumber: 2),
              setKey(soundNumber: 3),
              setKey(soundNumber: 4),
              setKey(soundNumber: 5),
              setKey(soundNumber: 6),
              setKey(soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
