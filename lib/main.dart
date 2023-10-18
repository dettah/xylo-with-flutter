import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Xyloph(),
    );
  }
}

class Xyloph extends StatelessWidget {
  const Xyloph({super.key});

  Expanded xyloButton(String note, int imgId, Color myColor) {
    return Expanded(
      child: TextButton(
          //button color
          style:
              ButtonStyle(backgroundColor: MaterialStatePropertyAll(myColor)),
          //onPressed property
          onPressed: () {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(
              Audio("assets/note$imgId.wav"),
            );
          },
          //button Text
          child: Text(
            note,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2,
                shadows:  [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  ),
                ]),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          xyloButton("DOH", 1, Colors.black),
          xyloButton("REH", 2, Colors.brown),
          xyloButton("MEH", 3, Colors.green),
          xyloButton("FAH", 4, Colors.purple),
          xyloButton("SOH", 5, Colors.blue),
          xyloButton("LAH", 6, Colors.yellow),
          xyloButton("TEH", 7, Colors.pink),
        ],
      ),
    );
  }
}
