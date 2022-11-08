import 'package:flutter/material.dart';

class AlbumsCartegory extends StatelessWidget {
  const AlbumsCartegory({
    Key? key,
    required this.image,
    required this.albumname,
  }) : super(key: key);
  final String image, albumname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 8.0),
        Text(albumname),
      ],
    );
  }
}
