import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15.0),
      height: 200.0,
      width: 150.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            demoMusic[index].image,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 7.0,
              bottom: 7.0,
            ),
            child: Text(
              demoMusic[index].songName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text(demoMusic[index].artistName),
        ],
      ),
    );
  }
}
