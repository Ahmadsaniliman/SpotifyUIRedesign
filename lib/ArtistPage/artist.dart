import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/home_page.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class ArtistPageView extends StatelessWidget {
  const ArtistPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavContainer(),
      body: Column(
        children: [
          const UpPartArtist(),
          const AlbumDesc(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Albums',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Albums(),
              ],
            ),
          ),
          // Songs.
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Songs',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.0),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(fontSize: 10.0),
                    )
                  ],
                ),
                // const SizedBox(height: 10.0),
                SizedBox(
                  height: 80.0,
                  child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 5.0,
                      ),
                      margin: const EdgeInsets.only(bottom: 5.0),
                      height: 60.0,
                      width: double.infinity,
                      // color: Colors.green,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: dartModeColor,
                                ),
                                child: Image.asset(
                                  'assets/icons/play.png',
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Column(
                                children: const [
                                  Text('As It Was'),
                                  Text(
                                    'Harry Style',
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text('3:50'),
                              const SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: dartModeColor,
                                ),
                                child: Image.asset(
                                  'assets/icons/love.png',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Albums extends StatelessWidget {
  const Albums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          AlbumsCartegory(
            image: 'assets/images/Rectangle 16.png',
            albumname: 'Red',
          ),
          SizedBox(width: 10.0),
          AlbumsCartegory(
            image: 'assets/images/Rectangle 16.png',
            albumname: 'Album Name',
          ),
          SizedBox(width: 10.0),
          AlbumsCartegory(
            image: 'assets/images/Rectangle 18.png',
            albumname: 'Album Name',
          ),
        ],
      ),
    );
  }
}

class AlbumsCartegory extends StatelessWidget {
  const AlbumsCartegory({
    Key? key,
    required this.image,
    required this.albumname,
  }) : super(key: key);
  final String image, albumname;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 8.0),
        Text(albumname),
      ],
    );
  }
}

class AlbumDesc extends StatelessWidget {
  const AlbumDesc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class UpPartArtist extends StatelessWidget {
  const UpPartArtist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
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
    );
  }
}
