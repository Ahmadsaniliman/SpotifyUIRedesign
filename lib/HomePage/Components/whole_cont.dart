import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/HomePage/Components/app_bar_row.dart';
import 'package:spotifyuiredesign/HomePage/Components/desc_cont.dart';

class WholeCont extends StatelessWidget {
  const WholeCont({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.0,
      width: double.infinity,
      child: Column(
        children: const [
          AppBarRow(),
          DescCont(),
        ],
      ),
    );
  }
}
