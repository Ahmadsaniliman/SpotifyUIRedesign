import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/default_button.dart';
import 'package:spotifyuiredesign/constants/routes.dart';

class DowPart extends StatelessWidget {
  const DowPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          text: 'Sign In',
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
                  registerViewRoute,
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ],
    );
  }
}
