import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/buttons.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RegistAndSignInBUttons(
          onPress: () {
            Navigator.of(context).pushNamed(
              registerViewRoute,
            );
          },
          text: 'Register',
          color: primaryColor,
          textColor: Colors.white,
        ),
        RegistAndSignInBUttons(
          onPress: () {
            Navigator.of(context).pushNamed(
              signInViewRoute,
            );
          },
          text: 'Sign in',
          color: null,
          textColor: null,
        ),
      ],
    );
  }
}
