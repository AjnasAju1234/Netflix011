// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix/model/image_constant/databaseimage.dart';
import 'package:netflix/model/names/names.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/utils/styles/text_styles.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: DataBaseImages.gridImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          height: 60,
                          width: 80,
                          child: Image.asset(DataBaseImages.gridImages[index]),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        Names.names[index],
                        style: TextStyle(color: ColorConstant.textColor),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Manage Profile",
              style: StyleConstant.stylewhiteclr,
            ),
            Icon(
              Icons.edit,
              color: ColorConstant.textColor,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          color: Colors.grey.shade900,
          height: 280,
          // color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.message,
                      color: ColorConstant.textColor,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Tell Friends about Netflix",
                      style: TextStyle(
                          color: ColorConstant.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 350,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                    style: StyleConstant.stylewhiteclr,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Terms and Conditions",
                  style: StyleConstant.stylegreyclr,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 37,
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text(
                            "Copy Link",
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 60,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) {
                      return const VerticalDivider(
                        thickness: 2,
                        color: Colors.white12,
                      );
                    },
                    itemCount: DataBaseImages.linkImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Column(
                          children: [
                            InkWell(
                              child: Container(
                                child: Image.asset(
                                  DataBaseImages.linkImages[index],
                                  height: 30,
                                  width: 60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/icons/Group 76.png"),
                Row(
                  children: [
                    Divider(
                      thickness: 5,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    // Divider(
                    //   color: Colors.grey.shade300,
                    // ),
                    Text(
                      "App Settings",
                      style: StyleConstant.stylewhiteclr,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Account",
                      style: StyleConstant.stylewhiteclr,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Help",
                      style: StyleConstant.stylewhiteclr,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign Out",
                      style: StyleConstant.stylewhiteclr,
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
