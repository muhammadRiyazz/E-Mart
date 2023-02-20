import 'package:emart/presendation/Navigation/navigation.dart';
import 'package:emart/presendation/Screen%20Intro/screen_intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenIntro(),
    );
  }
}
