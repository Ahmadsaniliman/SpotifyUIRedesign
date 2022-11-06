import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/LyricsPage/Components/down_part.dart';
import 'package:spotifyuiredesign/LyricsPage/Components/upper_part.dart';

import 'package:spotifyuiredesign/constants/demo_data.dart';

class LyricsPageView extends StatelessWidget {
  const LyricsPageView({
    Key? key,
    required this.music,
  }) : super(key: key);
  final PopularMusic music;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UpperPart(music: music),
          DownPart(music: music),
        ],
      ),
    );
  }
}
