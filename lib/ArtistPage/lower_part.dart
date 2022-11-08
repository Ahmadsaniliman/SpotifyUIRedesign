import 'package:flutter/material.dart';
import 'package:spotifyuiredesign/constants/colors.dart';

class LOwerPart extends StatelessWidget {
  const LOwerPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
