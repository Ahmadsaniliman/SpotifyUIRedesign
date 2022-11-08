import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ArtistPage/album_cat.dart';

class Albums extends StatelessWidget {
  const Albums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          AlbumsCartegory(
            image: 'assets/images/Rectangle 16.png',
            albumname: 'Red',
          ),
          SizedBox(width: 10.0),
          AlbumsCartegory(
            image: 'assets/images/Rectangle 16.png',
            albumname: 'Album Name',
          ),
          SizedBox(width: 10.0),
          AlbumsCartegory(
            image: 'assets/images/Rectangle 18.png',
            albumname: 'Album Name',
          ),
        ],
      ),
    );
  }
}
