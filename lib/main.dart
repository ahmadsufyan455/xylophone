import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playAudio(String audioTitle) {
    final player = AudioCache();
    player.play(audioTitle);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              colorBox(
                name: 'Do',
                audioNumber: 1,
                color: Colors.red,
              ),
              colorBox(
                name: 'Re',
                audioNumber: 2,
                color: Colors.yellow,
              ),
              colorBox(
                name: 'Mi',
                audioNumber: 3,
                color: Colors.green,
              ),
              colorBox(
                name: 'Fa',
                audioNumber: 4,
                color: Colors.blue,
              ),
              colorBox(
                name: 'Sol',
                audioNumber: 5,
                color: Colors.purple,
              ),
              colorBox(
                name: 'La',
                audioNumber: 6,
                color: Colors.orange,
              ),
              colorBox(
                name: 'Si',
                audioNumber: 7,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorBox({
    required String name,
    required int audioNumber,
    required Color color,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playAudio('assets_note$audioNumber.wav');
        },
        child: Container(
          color: color,
          child: Center(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
