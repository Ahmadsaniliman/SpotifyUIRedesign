import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class ArtistPageView extends StatelessWidget {
  const ArtistPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(30.0),
                    ),
                child: Image.asset(
                  'assets/images/Rectangle 15.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 4,
                      ),
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                        color: dartModeColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //         MusicDetailsPageView(music: music),
                          //   ),
                          // );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 15.0,
                        ),
                      ),
                    ),
                    const Icon(Icons.ac_unit),
                  ],
                ),
              )
            ],
          ),
          // text album
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: const [
                Text(
                  'Billie Elish',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('2 Albums, 67 Tracks'),
                SizedBox(height: 10.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Turpis adipiscing vestibulum orci\n enim, nascetur vitae ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
