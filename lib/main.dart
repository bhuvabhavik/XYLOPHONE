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

  Expanded setKey({required int soundNumber, required Color color}) {
    return Expanded(
      child: MaterialButton(
        minWidth: double.maxFinite,
        color: color,
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
              setKey(soundNumber: 1, color: Colors.pinkAccent),
              setKey(soundNumber: 2, color: Colors.yellowAccent),
              setKey(soundNumber: 3, color: Colors.greenAccent),
              setKey(soundNumber: 4, color: Colors.blueAccent),
              setKey(soundNumber: 5, color: Colors.grey),
              setKey(soundNumber: 6, color: Colors.pinkAccent),
              setKey(soundNumber: 7, color: Colors.tealAccent),
            ],
          ),
        ),
      ),
    );
  }
}
