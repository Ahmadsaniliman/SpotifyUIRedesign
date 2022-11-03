import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class Contents extends StatelessWidget {
  const Contents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40.0,
        bottom: 30.0,
      ),
      child: Column(
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'If You Need Any Support? ',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Click Here',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
