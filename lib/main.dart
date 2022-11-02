import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ChossMode/choses_mode.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

import 'Welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify App',
      theme: ThemeData(),
      home: const ChooseModeView(),
    );
  }
}
