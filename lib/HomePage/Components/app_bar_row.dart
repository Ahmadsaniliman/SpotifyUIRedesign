import 'package:flutter/material.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.search,
          size: 30.0,
        ),
        Image.asset(
          'assets/images/Vector (1).png',
          width: 100.0,
        ),
        const Icon(
          Icons.menu,
          size: 30.0,
        ),
      ],
    );
  }
}
