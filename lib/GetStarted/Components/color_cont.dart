import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class OpacityColor extends StatelessWidget {
  const OpacityColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: dartModeColor.withOpacity(0.4),
    );
  }
}
