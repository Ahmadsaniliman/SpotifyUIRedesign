import 'package:flutter/material.dart';

class RegistAndSignInBUttons extends StatelessWidget {
  const RegistAndSignInBUttons({
    Key? key,
    required this.text,
    required this.onPress,
    required this.color,
    required this.textColor,
  }) : super(key: key);
  final String text;
  final Function()? onPress;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 60.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
