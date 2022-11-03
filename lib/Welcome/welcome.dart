import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            getStartedRoute,
          );
        },
        child: Center(
          child: Image.asset('assets/images/Vector (1).png'),
        ),
      ),
    );
  }
}
