import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/home_page.dart';
import 'package:spotifyuiredesign/Profile/Components/b_up_part.dart';
import 'package:spotifyuiredesign/Profile/Components/public.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavContainer(),
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
