import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/buttons.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class OptionButtons extends StatelessWidget {
  const OptionButtons({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

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
          index: index,
        ),
        RegistAndSignInBUttons(
          onPress: () {
            Navigator.of(context).pushNamed(
              signInViewRoute,
            );
          },
          text: 'Sign in',
          index: index,
        ),
      ],
    );
  }
}
