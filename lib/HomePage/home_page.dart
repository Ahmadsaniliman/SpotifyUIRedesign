import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/Components/build_app_cont.dart';
import 'package:spotifyuiredesign/HomePage/Components/category_card.dart';
import 'package:spotifyuiredesign/HomePage/Components/music_card.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedOne = 0;
  @override
  Widget build(BuildContext context) {
    final List<String> musicCategories = [
      'Music',
      'Videos',
      'Artist',
      'PodCasts',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarContainer(),
              SizedBox(
                height: 40.0,
                child: ListView.builder(
                  itemCount: musicCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedOne = index;
                      });
                    },
                    child: CategoryCard(
                      musicCategories: musicCategories,
                      selectedOne: selectedOne,
                      index: index,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: demoMusic.length,
                  itemBuilder: (context, index) => MusicCard(
                    index: index,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Playlist',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(fontSize: 10.0),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
