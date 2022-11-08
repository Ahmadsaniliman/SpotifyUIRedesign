import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ArtistPage/lower_part.dart';

class New extends StatelessWidget {
  const New({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Songs',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 10.0),
              )
            ],
          ),
          // const SizedBox(height: 10.0),
        const  LOwerPart(),
        ],
      ),
    );
  }
}
