import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            musicButton(soundNum: 1, color: const Color(0XFF82CAF0)),
            musicButton(soundNum: 2, color: const Color(0XFF63B3E4)),
            musicButton(soundNum: 3, color: const Color(0XFF479CD5)),
            musicButton(soundNum: 4, color: const Color(0XFF2D80C4)),
            musicButton(soundNum: 5, color: const Color(0XFF2068B4)),
            musicButton(soundNum: 6, color: const Color(0XFF09509E)),
            musicButton(soundNum: 7, color: const Color(0XFF223C77)),
          ],
        ),
      ),
    );
  }
}

void play(int voiceNum) {
  final player = AudioPlayer();
  player.play(AssetSource("assets_note$voiceNum.wav"));
}

Expanded musicButton({required int soundNum, required Color color}) {
  return Expanded(
    child: TextButton(
      onPressed: () => play(soundNum),
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: const RoundedRectangleBorder(),
      ),
      child: const Text(""),
    ),
  );
}
