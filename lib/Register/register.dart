import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/build_app_bar_reg.dart';
import 'package:spotifyuiredesign/Register/Components/content.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: const [
              BUildAppBar(),
              SizedBox(height: 30.0),
              Content(),
            ],
          ),
        ),
      ),
    );
  }
}
