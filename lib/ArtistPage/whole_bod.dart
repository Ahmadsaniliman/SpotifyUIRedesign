import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ArtistPage/album.dart';

class WholeBody extends StatelessWidget {
  const WholeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Albums',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          Albums(),
        ],
      ),
    );
  }
}
