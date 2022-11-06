import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/MusicPage/musix_page.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
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
          Container(
            width: double.infinity,
            height: 500.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Rectangle 9.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                        color: dartModeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  MusicDetailsPageView(music: music),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      music.songName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const Icon(Icons.ac_unit),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}