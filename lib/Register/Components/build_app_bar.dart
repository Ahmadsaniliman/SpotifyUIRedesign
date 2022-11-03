import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class BuildAppBarIcon extends StatelessWidget {
  const BuildAppBarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
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
              chooseModeRoute,
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15.0,
          ),
        ),
      ),
    );
  }
}
