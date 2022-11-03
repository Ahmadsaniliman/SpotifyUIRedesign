import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class BUildAppBar extends StatelessWidget {
  const BUildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
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
                  registerSignInViewRoute,
                );
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 15.0,
              ),
            ),
          ),
        ),
        const SizedBox(width: 80.0),
        Image.asset(
          'assets/images/Vector (1).png',
          width: 100,
        ),
      ],
    );
  }
}
