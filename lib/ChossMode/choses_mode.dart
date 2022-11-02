import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/GetStarted/Components/back_image.dart';
import 'package:spotifyuiredesign/GetStarted/Components/color_cont.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackImageContainer(
            image: 'assets/images/choosemodeimage.png',
          ),
          OpacityColor(),
        ],
      ),
    );
  }
}
