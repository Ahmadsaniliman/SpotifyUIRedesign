import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/default_button.dart';

class DowmTextPart extends StatelessWidget {
  const DowmTextPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30.0,
        horizontal: 25.0,
      ),
      child: Column(
        children: [
          Image.asset('assets/images/Vector (1).png'),
          const Spacer(),
          const Text(
            'Enjoy listening to music',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Sagittis enim \npurus sed phasellus. Cursus ornare id\n scelerisque aliquam.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          DefaultButton(
            onPress: () {},
            text: 'Get Started',
          ),
        ],
      ),
    );
  }
}
