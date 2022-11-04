import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.musicCategories,
    required this.selectedOne,
    required this.index,
  }) : super(key: key);
  final int index;

  final List<String> musicCategories;
  final int selectedOne;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 35.0,
          ),
          child: Text(
            musicCategories[index],
            style: TextStyle(
              fontSize: 20.0,
              fontWeight:
                  selectedOne == index ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        Container(
          height: 5.0,
          width: 35.0,
          color: selectedOne == index ? primaryColor : Colors.white,
        ),
      ],
    );
  }
}
