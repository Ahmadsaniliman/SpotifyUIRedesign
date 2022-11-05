import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class MusicDetailsPageView extends StatelessWidget {
  const MusicDetailsPageView({Key? key}) : super(key: key);

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
                        // Navigator.of(context).pushNamed(
                        //   registerSignInViewRoute,
                        // );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 15.0,
                      ),
                    ),
                  ),
                  Text('Now Playing'),
                  Icon(Icons.ac_unit),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
