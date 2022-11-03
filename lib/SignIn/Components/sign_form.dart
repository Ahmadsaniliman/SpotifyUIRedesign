import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Register/Components/text_field_cont.dart';

class SignInFormAnd extends StatelessWidget {
  const SignInFormAnd({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextFieldContainer(
          text: 'Enter UserName Or Email',
        ),
        SizedBox(height: 20.0),
        TextFieldContainer(
          text: 'Password',
          leading: Icon(
            Icons.visibility_off,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Recovered Password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
