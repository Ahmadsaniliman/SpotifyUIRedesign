import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/home_page.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/enums.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class BottomNavContainer extends StatelessWidget {
  const BottomNavContainer({
    Key? key,
    required this.selectOne,
  }) : super(key: key);
  final bottomenums selectOne;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 50.0,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomePageView(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: 2.0,
                      width: 40.0,
                      color: selectOne == bottomenums.home
                          ? primaryColor
                          : Colors.white,
                    ),
                    Image.asset(
                      'assets/images/homee.png',
                      color: selectOne == bottomenums.home
                          ? primaryColor
                          : Colors.white,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: 2.0,
                      width: 40.0,
                      color: selectOne == bottomenums.nothing
                          ? primaryColor
                          : Colors.white,
                    ),
                    Image.asset(
                      'assets/images/nothing.png',
                      color: selectOne == bottomenums.nothing
                          ? primaryColor
                          : Colors.white,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: 2.0,
                      width: 40.0,
                      color: selectOne == bottomenums.farvourite
                          ? primaryColor
                          : Colors.white,
                    ),
                    Image.asset(
                      'assets/images/farvourite.png',
                      color: selectOne == bottomenums.farvourite
                          ? primaryColor
                          : Colors.white,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    profileRoute,
                  );
                },
                child: Column(
                  children: [
                    Container(
                      height: 2.0,
                      width: 40.0,
                      color: selectOne == bottomenums.profile
                          ? primaryColor
                          : Colors.white,
                    ),
                    Image.asset(
                      'assets/images/profile.png',
                      color: selectOne == bottomenums.profile
                          ? primaryColor
                          : Colors.white,
                    ),
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


// Container(
//             height: 2.0,
//             width: 30.0,
//             color: Colors.green,
//           ),