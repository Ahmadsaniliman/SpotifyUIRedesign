import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ArtistPage/Components/up_part.dart';
import 'package:spotifyuiredesign/ArtistPage/alb_des.dart';
import 'package:spotifyuiredesign/ArtistPage/new.dart';
import 'package:spotifyuiredesign/ArtistPage/whole_bod.dart';
import 'package:spotifyuiredesign/constants/bottom_nav.dart';
import 'package:spotifyuiredesign/constants/enums.dart';

class ArtistPageView extends StatelessWidget {
  const ArtistPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavContainer(
        selectOne: bottomenums.farvourite,
      ),
      body: Column(
        children: const [
          UpPartArtist(),
          AlbumDesc(),
          WholeBody(),
          // Songs.
          New(),
        ],
      ),
    );
  }
}
