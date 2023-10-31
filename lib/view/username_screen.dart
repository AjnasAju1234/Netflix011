// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:netflix/model/image_constant/databaseimage.dart';
import 'package:netflix/model/names/names.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/view/bottamnavi/bottam%20_navi.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.primaryColor,
          centerTitle: true,
          title: DataBaseImages.logo,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: ColorConstant.primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(75),
                child: GridView.builder(
                  itemCount: DataBaseImages.gridImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 140,
                      crossAxisSpacing: 0.1),
                  itemBuilder: (context, index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ));
                        },
                        child: Container(
                          height: 100,
                          width: 92,
                          child: Image.asset(DataBaseImages.gridImages[index]),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        Names.names[index],
                        style: TextStyle(color: ColorConstant.textColor),
                      )
                    ],
                  ),
                ),
              )),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
