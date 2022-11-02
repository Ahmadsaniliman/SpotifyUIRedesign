import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class RegisteSignInView extends StatefulWidget {
  const RegisteSignInView({Key? key}) : super(key: key);

  @override
  State<RegisteSignInView> createState() => _RegisteSignInViewState();
}

class _RegisteSignInViewState extends State<RegisteSignInView> {
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/Rectangle 9.png',
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
                horizontal: 20.0,
              ),
              child: Column(
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
                  const SizedBox(height: 70.0),
                  Image.asset('assets/images/Vector (1).png'),
                  const SizedBox(height: 40.0),
                  const Text(
                    'Enjoy Listening To Music',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25.0,
                    ),
                    child: Text(
                      'Spotify is a proprietary Swedish audio\n streaming and media services provider ',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RegistAndSignInBUttons(
                        onPress: () {},
                        text: 'Register',
                        index: index,
                      ),
                      RegistAndSignInBUttons(
                        onPress: () {},
                        text: 'Sign in',
                        index: index,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistAndSignInBUttons extends StatelessWidget {
  const RegistAndSignInBUttons({
    Key? key,
    required this.text,
    required this.onPress,
    required this.index,
  }) : super(key: key);
  final selectedOne = 0;
  final String text;
  final Function()? onPress;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 60.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: selectedOne == index ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
