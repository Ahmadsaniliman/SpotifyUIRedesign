import 'package:flutter/material.dart';

class BackImageContainer extends StatelessWidget {
  const BackImageContainer({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
        //   color: Colors.green,
      ),
    );
  }
}
