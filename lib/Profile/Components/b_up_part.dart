import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/Profile/Components/build_bar.dart';

class BuildUpPart extends StatelessWidget {
  const BuildUpPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      width: double.infinity,
      height: 300.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          const BuildBar(),
          const SizedBox(height: 15.0),
          Container(
            height: 100.0,
            width: 100.0,
            child: Image.asset(
              'assets/images/Rectangle 29.png',
              fit: BoxFit.fill,
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            child: Text('saniahmadliman@gmail.com'),
          ),
          const Text('Ahmad Sani Liman'),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      '78K',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    Text(
                      '79K',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Playlist Songs.
        ],
      ),
    );
  }
}
