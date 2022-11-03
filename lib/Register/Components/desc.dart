import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/option_buttons.dart';

class SpotifyDesc extends StatelessWidget {
  const SpotifyDesc({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/Vector (1).png'),
        const SizedBox(height: 40.0),
        const Text(
          'Enjoy Listening To Music',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 25.0,
          ),
          child: Text(
            'Spotify is a proprietary Swedish audio\n streaming and media services provider ',
            textAlign: TextAlign.center,
          ),
        ),
        OptionButtons(index: index),
      ],
    );
  }
}
