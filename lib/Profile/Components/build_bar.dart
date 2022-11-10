import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class BuildBar extends StatelessWidget {
  const BuildBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        const Icon(Icons.menu),
      ],
    );
  }
}
