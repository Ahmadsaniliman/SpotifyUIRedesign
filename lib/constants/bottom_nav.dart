import 'package:flutter/material.dart';
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 1st
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                homePageRoute,
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
                const SizedBox(height: 10.0),
                Image.asset(
                  'assets/images/homee.png',
                  color: selectOne == bottomenums.home
                      ? primaryColor
                      : Colors.black,
                ),
              ],
            ),
          ),
          // 2nd
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
                const SizedBox(height: 10.0),
                Image.asset(
                  'assets/icons/nothing.png',
                  color: selectOne == bottomenums.nothing
                      ? primaryColor
                      : Colors.black,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                artistPageRoute,
              );
            },
            child: Column(
              children: [
                Container(
                  height: 2.0,
                  width: 40.0,
                  color: selectOne == bottomenums.farvourite
                      ? primaryColor
                      : Colors.white,
                ),
                const SizedBox(height: 10.0),
                Image.asset(
                  'assets/icons/farvourite.png',
                  color: selectOne == bottomenums.farvourite
                      ? primaryColor
                      : Colors.black,
                ),
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
                const SizedBox(height: 10.0),
                Image.asset(
                  'assets/icons/profile.png',
                  color: selectOne == bottomenums.profile
                      ? primaryColor
                      : Colors.black,
                ),
              ],
            ),
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