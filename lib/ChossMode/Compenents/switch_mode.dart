import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class SwitchMode extends StatelessWidget {
  const SwitchMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 25.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: dartModeColor.withOpacity(0.7),
                ),
                child: const Icon(Icons.abc),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Dark Mode',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 70.0,
                width: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: dartModeColor.withOpacity(0.7),
                ),
                child: const Icon(Icons.abc),
              ),
              const SizedBox(height: 15.0),
              const Text(
                'Light Mode',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
