import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class PublicAblumPlayList extends StatelessWidget {
  const PublicAblumPlayList({
    Key? key,
    required this.music,
  }) : super(key: key);
  final PublicMusic music;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 60.0,
                width: 60.0,
                // color: Colors.green,
                child: Image.asset(
                  music.image,
                ),
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    music.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    music.subTitle,
                    style: const TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(music.time),
              const SizedBox(width: 15.0),
              const Icon(Icons.ac_unit),
            ],
          ),
        ],
      ),
    );
  }
}
