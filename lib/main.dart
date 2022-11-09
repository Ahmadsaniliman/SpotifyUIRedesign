import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/ArtistPage/artist.dart';
import 'package:spotifyuiredesign/ChossMode/choses_mode.dart';
import 'package:spotifyuiredesign/GetStarted/get_started.dart';
import 'package:spotifyuiredesign/HomePage/home_page.dart';
import 'package:spotifyuiredesign/Profile/profile.dart';
import 'package:spotifyuiredesign/Register/register.dart';
import 'package:spotifyuiredesign/Register/register_sign_in.dart';
import 'package:spotifyuiredesign/SignIn/sing_in.dart';
import 'package:spotifyuiredesign/Welcome/welcome.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify App',
      theme: ThemeData(),
      home: const WelcomePage(),
      routes: {
        registerViewRoute: (context) => const RegisterView(),
        signInViewRoute: (context) => const SignInView(),
        getStartedRoute: (context) => const GetStartedPage(),
        chooseModeRoute: (context) => const ChooseModeView(),
        registerSignInViewRoute: (context) => const RegisteSignInView(),
        homePageRoute: (context) => const HomePageView(),
        profileRoute: (context) => const ProfileView(),
        artistPageRoute: (context) => const ArtistPageView(),
      },
    );
  }
}
