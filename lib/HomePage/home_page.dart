import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/Components/build_app_cont.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> musicCategories = [
      'Music',
      'Videos',
      'Artist',
      'PodCasts',
    ];
    final int index = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15.0,
            right: 20.0,
            left: 20.0,
          ),
          child: Column(
            children: [
              const AppBarContainer(),
              SizedBox(
                height: 40.0,
                child: ListView.builder(
                  itemCount: musicCategories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 35.0,
                          ),
                          child: Text(
                            musicCategories[index],
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Container(
                          height: 5.0,
                          width: 35.0,
                          color: primaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
