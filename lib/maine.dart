// import 'package:flutter/material.dart';
// // import 'package:english_words/english_words.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Xyloph(),
//     );
//   }
// }

// class Xyloph extends StatelessWidget {
//   const Xyloph({super.key});

//   //playSound function
//   void playSound(int soundNo) {
//     final assetsAudioPlayer = AssetsAudioPlayer();

//     assetsAudioPlayer.open(
//       Audio("assets/note$soundNo.wav"),
//     );
//   }

//   //buildKey widget
//   Expanded buildKey(int soundNum, Color myColor) {
//     return Expanded(
//       child: TextButton(
//         onPressed: () {
//           playSound(soundNum);
//         },
//         style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(myColor)),
//         child: const Text('doh'),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           buildKey(1, Colors.black),
//           buildKey(2, Colors.grey),
//           buildKey(3, Colors.blue),
//           buildKey(4, Colors.green),
//           buildKey(5, Colors.orange),
//           buildKey(6, Colors.yellow),
//           buildKey(7, Colors.red),
//         ],
//       ),
//     ));
//   }
// }
// // 