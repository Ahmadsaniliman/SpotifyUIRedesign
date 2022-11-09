import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/MusicPage/musix_page.dart';
import 'package:spotifyuiredesign/constants/colors.dart';
import 'package:spotifyuiredesign/constants/demo_data.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({
    Key? key,
    required this.music,
  }) : super(key: key);

  final PopularMusic music;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 510.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(music.image),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  MusicDetailsPageView(music: music),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      music.songName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(Icons.ac_unit),
                  ],
                ),
                const SizedBox(height: 15.0),
                // lyrics
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '{Verse One}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'This ain"t for the best\n My reputation never been worse, so\nYou must like me for me\n\nWe can make any promises\nNow can we,babe?\nBut you can  make me a drink',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    // verse 2
                    Text(
                      '{Verse Two}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Dive bar on the East side,Where you at?]nPhone light up my nightstand in the black\nCome here you can meet me on the back,\n\nDark jeans and your Nikes,look at you\noh, Damn, never seen that color blue\njust think of the fun things we could do\ncause i like you',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),

                    // verse 3
                    Text(
                      '{Verse Three}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'This ain"t for the best\n My reputation never been worse, so\nYou must like me for me\n\nWe can make any promises\nNow can we,babe?\nBut you can  make me a drink\n\nis it cool that i said all that?\nis it chill that you are in my head\nCause i know its delicate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
