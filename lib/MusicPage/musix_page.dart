import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/MusicPage/Components/content_whole.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

import 'Components/up_part.dart';

class MusicDetailsPageView extends StatelessWidget {
  const MusicDetailsPageView({
    Key? key,
    required this.music,
  }) : super(key: key);
  final PopularMusic music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Column(
            children: [
              const BuildAppBarMusic(),
              WholeContent(music: music),
            ],
          ),
        ),
      ),
    );
  }
}
