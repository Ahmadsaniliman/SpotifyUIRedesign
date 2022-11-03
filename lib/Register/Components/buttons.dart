import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class RegistAndSignInBUttons extends StatelessWidget {
  const RegistAndSignInBUttons({
    Key? key,
    required this.text,
    required this.onPress,
    required this.index,
  }) : super(key: key);
  final selectedOne = 0;
  final String text;
  final Function()? onPress;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 60.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: selectedOne == index ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
