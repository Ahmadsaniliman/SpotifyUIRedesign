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
    image: 'assets/images/Rectangle 9.png',
    songName: 'Bad Guy',
    artistName: 'Bilie Elish',
  ),
  PopularMusic(
    image: 'assets/images/Rectangle 9.png',
    songName: 'Scorpion',
    artistName: 'Drake',
  ),
  PopularMusic(
    image: 'assets/images/Rectangle 9.png',
    songName: 'White',
    artistName: 'Bilie Elish',
  ),
  PopularMusic(
    image: 'assets/images/Rectangle 9.png',
    songName: 'Lover',
    artistName: 'Taylor Swift',
  ),
];
