import 'package:flutter/material.dart';
import 'package:netflix/utils/styles/text_styles.dart';

class ReleaseMoviecontainer extends StatelessWidget {
  ReleaseMoviecontainer({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 113,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Arrival",
              style: StyleConstant.stylewhiteclr,
            ),
            Text(
              "El chapo",
              style: StyleConstant.stylewhiteclr,
            ),
            Text(
              "Nov 6",
              style: StyleConstant.stylegreyclr,
            ),
          ],
        )
      ],
    );
  }
}
