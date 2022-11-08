import 'package:flutter/material.dart';

class PlayListRow extends StatelessWidget {
  const PlayListRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Playlist',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        Text(
          'See All',
          style: TextStyle(fontSize: 10.0),
        )
      ],
    );
  }
}
