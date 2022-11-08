import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Profile/Components/public_palylist.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class PublicAlbs extends StatelessWidget {
  const PublicAlbs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Public PlayLists',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 275.0,
            child: ListView.builder(
              itemCount: publicMusic.length,
              itemBuilder: (context, index) => PublicAblumPlayList(
                music: publicMusic[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
