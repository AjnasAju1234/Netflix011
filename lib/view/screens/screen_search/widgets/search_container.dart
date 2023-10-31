import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color.dart';

class SearchContainer extends StatelessWidget {
  SearchContainer({super.key, required this.names, required this.images});

  final String names;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        height: 76,
        color: ColorConstant.secondaryColor,
        child: Row(
          children: [
            Container(
              height: 76,
              width: 130,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(images))),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    names,
                    style:
                        TextStyle(fontSize: 17, color: ColorConstant.textColor),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_outline_outlined,
                        color: ColorConstant.textColor,
                        size: 35,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
