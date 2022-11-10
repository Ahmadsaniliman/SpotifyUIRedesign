import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/LyricsPage/lyrics.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class WholeContent extends StatelessWidget {
  const WholeContent({
    Key? key,
    required this.music,
  }) : super(key: key);

  final PopularMusic music;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Column(
        children: [
          Container(
            width: 300.0,
            height: 300.0,
            decoration: BoxDecoration(
              //   color: Colors.green,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Image.asset(
              music.image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    const SizedBox(height: 5.0),
                    Text(music.artistName),
                  ],
                ),
                Image.asset('assets/icons/farvourite.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
            ),
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
                        Positioned(
                          top: 0.3,
                          child: Container(
                            height: 10.0,
                            width: 10.0,
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
                    Text('0:00'),
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
                  vertical: 20.0,
                  horizontal: 45.0,
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LyricsPageView(music: music),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/arrowup.png',
                    ),
                    const SizedBox(height: 10.0),
                    const Text('Lyrics'),
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
