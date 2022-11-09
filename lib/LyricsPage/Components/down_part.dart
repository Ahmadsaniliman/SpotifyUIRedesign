import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class DownPart extends StatelessWidget {
  const DownPart({
    Key? key,
    required this.music,
  }) : super(key: key);

  final PopularMusic music;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Image.asset(
                      music.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        music.songName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      //   const SizedBox(height: 5.0),
                      Text(music.artistName),
                    ],
                  ),
                ],
              ),
              Image.asset('assets/icons/farvourite.png'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 1.0,
                          width: double.infinity,
                          color: dartModeColor,
                        ),
                        Container(
                          height: 3.0,
                          width: 150.0,
                          color: dartModeColor,
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            height: 12.0,
                            width: 13.0,
                            decoration: const BoxDecoration(
                              color: dartModeColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('2:55'),
                    Text('5:00'),
                  ],
                ),
              ],
            ),
          ),
          // dowmPart
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/repeat.png'),
                    Image.asset('assets/icons/backwardplay.png'),
                    Container(
                      width: 50.0,
                      height: 60.0,
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset('assets/icons/pause.png'),
                    ),
                    Image.asset('assets/icons/forwardplay.png'),
                    Image.asset('assets/icons/shuffle.png'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
