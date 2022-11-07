class PopularMusic {
  final String image;
  final String songName;
  final String artistName;

  PopularMusic({
    required this.image,
    required this.songName,
    required this.artistName,
  });
}

final List<PopularMusic> demoMusic = [
  PopularMusic(
    image: 'assets/images/taylor.jpg',
    songName: 'Lover',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylorred.jpg',
    songName: 'Delicate',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylorred2.jpg',
    songName: 'Blank Space',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylor.jpg',
    songName: 'The 1',
    artistName: 'Taylor Swift',
  ),
];
