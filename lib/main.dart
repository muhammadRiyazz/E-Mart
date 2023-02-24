import 'package:emart/presendation/Navigation/navigation.dart';
import 'package:emart/presendation/user%20intro%20screens/Screen%20Intro/screen_intro.dart';
import 'package:flutter/material.dart';

import 'presendation/user intro screens/screen Splash/screen splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                style: BorderStyle.solid,
                width: 0,
                color: Color.fromARGB(255, 251, 248, 248)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.amberAccent),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ScreenSplash(),
    );
  }
}
