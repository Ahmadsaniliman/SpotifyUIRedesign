import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/GetStarted/Components/back_image.dart';
import 'package:spotifyuiredesign/GetStarted/Components/color_cont.dart';
import 'package:spotifyuiredesign/GetStarted/Components/down_part.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackImageContainer(
            image: 'assets/images/getstartedpageimage.png',
          ),
          OpacityColor(),
          DowmTextPart(),
        ],
      ),
    );
  }
}
