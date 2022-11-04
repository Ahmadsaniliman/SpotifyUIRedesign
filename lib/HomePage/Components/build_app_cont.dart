import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/Components/whole_cont.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const WholeCont(),
        //
        Positioned(
          top: 0,
          child: Image.asset(
            'assets/images/wp11348886-billie-eilish-hd-desktop-2022-wallpapers-transformed 1.png',
          ),
        ),
      ],
    );
  }
}
