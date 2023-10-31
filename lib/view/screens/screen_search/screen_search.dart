import 'package:flutter/material.dart';
import 'package:netflix/model/database/database.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/view/screens/screen_search/widgets/search_container.dart';

class Screensearch extends StatelessWidget {
  const Screensearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 52,
          color: ColorConstant.secondaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.search,
                color: ColorConstant.textColor,
              ),
              Text(
                "Search for a show,movie,genre,etc..",
                style: TextStyle(fontSize: 18, color: ColorConstant.lightColor),
              ),
              Icon(
                Icons.mic,
                color: ColorConstant.textColor,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Text(
                "Top Searches",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: ColorConstant.textColor),
              )
            ],
          ),
        ),
        ListView.builder(
          itemCount: LocalDatabase.localdatabase.length,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SearchContainer(
                names: LocalDatabase.localdatabase[index]['search'],
                images: LocalDatabase.localdatabase[index]['image']);
          },
        )
      ],
    );
  }
}
