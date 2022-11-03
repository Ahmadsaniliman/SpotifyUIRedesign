import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/SignIn/Components/build_app_bar.dart';
import 'package:spotifyuiredesign/SignIn/Components/contents.dart';
import 'package:spotifyuiredesign/SignIn/Components/down_part.dart';
import 'package:spotifyuiredesign/SignIn/Components/sign_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: const [
              BuildAppBarSign(),
              Contents(),
              SignInFormAnd(),
              SizedBox(height: 20.0),
              DowPart(),
            ],
          ),
        ),
      ),
    );
  }
}
