import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/build_app_bar.dart';
import 'package:spotifyuiredesign/Register/Components/desc.dart';

class RegisteSignInView extends StatefulWidget {
  const RegisteSignInView({Key? key}) : super(key: key);

  @override
  State<RegisteSignInView> createState() => _RegisteSignInViewState();
}

class _RegisteSignInViewState extends State<RegisteSignInView> {
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/bottomimage.png',
              width: 300,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: [
                  const BuildAppBarIcon(),
                  const SizedBox(height: 70.0),
                  SpotifyDesc(index: index)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
