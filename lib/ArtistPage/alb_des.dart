import 'package:flutter/material.dart';

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
