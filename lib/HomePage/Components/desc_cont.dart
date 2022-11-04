import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class DescCont extends StatelessWidget {
  const DescCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(
        top: 15.0,
        bottom: 20.0,
      ),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'New Album',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Text(
              'Happier Than\nEver',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Text(
            'Billie Elish',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
