import 'package:flutter/material.dart';
import 'package:netflix/model/database/database.dart';
import 'package:netflix/utils/color_constant/color.dart';

class ContainerScroll extends StatelessWidget {
  const ContainerScroll({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 10),
              child: Text(
                LocalDatabase.localdatabase[index]['Name'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: ColorConstant.textColor),
              ),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          height: 160,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemCount: LocalDatabase.localdatabase.length - 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 110,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            LocalDatabase.localdatabase[index]['image']))),
              );
            },
          ),
        )
      ],
    );
  }
}
