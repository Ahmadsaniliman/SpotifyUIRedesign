import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/default_button.dart';

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
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      padding: EdgeInsets.zero,
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                        color: dartModeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 15.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 80.0),
                  Image.asset(
                    'assets/images/Vector (1).png',
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
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
              ),
              const SizedBox(height: 20.0),
              DefaultButton(
                text: 'Create Account',
                onPress: () {},
              ),
              Row(
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
              Row(
                children: [
                  Image.asset('assets/images/Vector (2).png'),
                  Image.asset('assets/images/Vector (2).png'),
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Do You Have An Account?',
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign In'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
        ),
      ),
    );
  }
}
