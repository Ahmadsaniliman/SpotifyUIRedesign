import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/text_field_cont.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/default_button.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Register',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'If You Need Any Support? ',
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Click Here',
                style: TextStyle(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        const TextFieldContainer(
          text: 'Full Name',
        ),
        const SizedBox(height: 10.0),
        const TextFieldContainer(
          text: 'Enter Email',
        ),
        const SizedBox(height: 10.0),
        const TextFieldContainer(
          text: 'Password',
          leading: Icon(Icons.visibility_off),
        ),
        const SizedBox(height: 20.0),
        DefaultButton(
          text: 'Create Account',
          onPress: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 140.0,
                height: 1.0,
                color: Colors.black,
              ),
              const Text('or'),
              Container(
                width: 140.0,
                height: 1.0,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100.0,
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/Vector (2).png'),
              Image.asset('assets/images/Vector (2).png'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Do You Have An Account?',
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  signInViewRoute,
                );
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ],
    );
  }
}
