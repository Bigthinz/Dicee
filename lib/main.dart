import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playBtn({int number, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playBtn(number: 1, color: Colors.red),
              playBtn(number: 2, color: Colors.orange),
              playBtn(number: 3, color: Colors.blue),
              playBtn(number: 4, color: Colors.pink),
              playBtn(number: 5, color: Colors.green),
              playBtn(number: 6, color: Colors.teal),
              playBtn(number: 7, color: Colors.brown),
            ],
          ),
        ),
      ),
    );
  }
}
