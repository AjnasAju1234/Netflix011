import 'package:flutter/material.dart';
import 'package:netflix/model/database/database.dart';
import 'package:netflix/utils/color_constant/color.dart';

class PreviewScroll extends StatelessWidget {
  const PreviewScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Previews",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: ColorConstant.textColor),
              ),
            )
          ],
        ),
        Container(
          height: 160,
          child: ListView.builder(
            itemCount: LocalDatabase.localdatabase.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage(LocalDatabase.localdatabase[index]['image']),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
