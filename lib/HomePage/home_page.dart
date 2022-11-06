import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/Components/build_app_cont.dart';
import 'package:spotifyuiredesign/HomePage/Components/category_card.dart';
import 'package:spotifyuiredesign/HomePage/Components/music_card.dart';
import 'package:spotifyuiredesign/MusicPage/musix_page.dart';
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
      bottomNavigationBar: const BottomNavContainer(),
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
                height: 35.0,
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
              const SizedBox(height: 10.0),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: demoMusic.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MusicDetailsPageView(
                            music: demoMusic[index],
                          ),
                        ),
                      );
                    },
                    child: MusicCard(
                      index: index,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Column(
                children: [
                  const PlayListRow(),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 100.0,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 5.0,
                        ),
                        margin: const EdgeInsets.only(bottom: 5.0),
                        height: 60.0,
                        width: double.infinity,
                        // color: Colors.green,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: dartModeColor,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/play.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 25.0,
                                ),
                                Column(
                                  children: const [
                                    Text('As It Was'),
                                    Text(
                                      'Harry Style',
                                      style: TextStyle(fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text('3:50'),
                                const SizedBox(
                                  width: 25.0,
                                ),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    color: dartModeColor,
                                  ),
                                  child: Image.asset(
                                    'assets/icons/love.png',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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

class BottomNavContainer extends StatelessWidget {
  const BottomNavContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      width: double.infinity,
      color: dartModeColor.withOpacity(0.7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/icons/home.png'),
          Image.asset('assets/icons/nothing.png'),
          Image.asset('assets/icons/farvourite.png'),
          Image.asset('assets/icons/profile.png'),
        ],
      ),
    );
  }
}

class PlayListRow extends StatelessWidget {
  const PlayListRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Playlist',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        Text(
          'See All',
          style: TextStyle(fontSize: 10.0),
        )
      ],
    );
  }
}
