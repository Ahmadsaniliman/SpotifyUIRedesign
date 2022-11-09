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
    image: 'assets/images/taylorred.jpg',
    songName: 'Lover',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylorred.jpg',
    songName: 'Delicate',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylorred.jpg',
    songName: 'Blank Space',
    artistName: 'Taylor Swift',
  ),
  PopularMusic(
    image: 'assets/images/taylorred.jpg',
    songName: 'Bad Guy',
    artistName: 'Billie Ellish',
  ),
];

class PublicMusic {
  final String image, title, subTitle, time;

  PublicMusic({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.time,
  });
}

final List<PublicMusic> publicMusic = [
  PublicMusic(
    image: 'assets/images/Rectangle 31.png',
    title: 'Dont Smile At Me',
    subTitle: 'Bille Elish',
    time: '4:55',
  ),
  PublicMusic(
    image: 'assets/images/Rectangle 32.png',
    title: 'Lover',
    subTitle: 'Taylor Swift',
    time: '4:50',
  ),
  PublicMusic(
    image: 'assets/images/Rectangle 33.png',
    title: 'Super Freaky Girl',
    subTitle: 'Nicki Minaj',
    time: '4:33',
  ),
  PublicMusic(
    image: 'assets/images/Rectangle 34.png',
    title: 'Bad Habit',
    subTitle: 'Steve Lucy',
    time: '4:55',
  ),
  PublicMusic(
    image: 'assets/images/Rectangle 35.png',
    title: 'Planet Her',
    subTitle: 'Doja Cat',
    time: '4:55',
  ),
  PublicMusic(
    image: 'assets/images/Rectangle 32.png',
    title: 'All Too Well',
    subTitle: 'Taylor Swift',
    time: '4:00',
  ),
];
