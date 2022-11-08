import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Profile/Components/b_up_part.dart';
import 'package:spotifyuiredesign/Profile/Components/public.dart';
import 'package:spotifyuiredesign/constants/bottom_nav.dart';
import 'package:spotifyuiredesign/constants/enums.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavContainer(
        selectOne: bottomenums.profile,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10.0),
            BuildUpPart(),
            PublicAlbs(),
          ],
        ),
      ),
    );
  }
}
