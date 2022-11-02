import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ChossMode/Compenents/choose_text.dart';
import 'package:spotifyuiredesign/ChossMode/Compenents/switch_mode.dart';
import 'package:spotifyuiredesign/GetStarted/Components/back_image.dart';
import 'package:spotifyuiredesign/GetStarted/Components/color_cont.dart';
import 'package:spotifyuiredesign/constants/default_button.dart';

class ChooseModeView extends StatelessWidget {
  const ChooseModeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackImageContainer(
            image: 'assets/images/choosemodeimage.png',
          ),
          const OpacityColor(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 27.0,
              horizontal: 20.0,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Vector (1).png',
                ),
                const Spacer(),
                const ChossModeText(),
                const SwitchMode(),
                DefaultButton(
                  text: 'Continue',
                  onPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
