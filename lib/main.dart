import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify App',
      theme: ThemeData(),
      home: const RegisterView(),
    );
  }
}
