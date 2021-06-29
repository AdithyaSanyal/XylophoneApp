import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  // ignore: non_constant_identifier_names
  Expanded BuildKey(int no, Color color) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playsound(no);
        },
        child: Container(
          color: color,
        ),
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
              BuildKey(1, Colors.red),
              BuildKey(2, Colors.orange),
              BuildKey(3, Colors.yellow),
              BuildKey(4, Colors.green),
              BuildKey(5, Colors.teal),
              BuildKey(6, Colors.blue),
              BuildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
