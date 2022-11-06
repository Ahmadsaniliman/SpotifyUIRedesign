import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

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
            top: 20.0,
            right: 20.0,
            left: 20.0,
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
                        Navigator.of(context).pushNamed(
                          homePageRoute,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 15.0,
                      ),
                    ),
                  ),
                  const Text(
                    'Now Playing',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const Icon(Icons.ac_unit),
                ],
              ),
              Padding(
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
                          const Icon(Icons.ac_unit),
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
                                  Container(
                                    height: 3.0,
                                    width: 150.0,
                                    color: dartModeColor,
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
                            vertical: 20.0,
                            horizontal: 45.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.ac_unit),
                              Icon(Icons.ac_unit),
                              Icon(Icons.ac_unit),
                              Icon(Icons.ac_unit),
                              Icon(Icons.ac_unit),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_upward),
                            ),
                            const Text('Lyrics'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
