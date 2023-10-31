import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:netflix/model/database/database.dart';
import 'package:netflix/model/names/names.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/view/screens/screen_home/widgets/container_scroll.dart';
import 'package:netflix/view/screens/screen_home/widgets/continuewatch.dart';
import 'package:netflix/view/screens/screen_home/widgets/previewscroll.dart';

// ignore: must_be_immutable
class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  TextStyle style = TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            leading: Image.asset("assets/logos/logos_netflix-icon.png"),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "TV Shows",
                  style: style,
                ),
                Text(
                  "Movies",
                  style: style,
                ),
                Text(
                  "My List",
                  style: style,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 400,
            pinned: false,
            flexibleSpace: FlutterCarousel.builder(
                itemCount: 4,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(LocalDatabase
                                  .localdatabase[index]['image']))));
                },
                options: CarouselOptions(
                    viewportFraction: 1,
                    pageSnapping: true,
                    autoPlayCurve: Curves.easeInCirc,
                    showIndicator: false,
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * 0.5)),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "#2 in Groot today",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 50,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.add,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(color: ColorConstant.textColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            color: ColorConstant.textColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.play_arrow),
                            Text(
                              "Play",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Container(
                      height: 80,
                      width: 50,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Icon(
                            Icons.info,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(color: ColorConstant.textColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                PreviewScroll(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Continue to watch Movie",
                        style: TextStyle(
                            color: ColorConstant.textColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ],
                ),
                ContinueWatching(),
                ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Names.names.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ContainerScroll(index: index),
                    );
                  },
                ),
              ],
            );
          }))
        ],
      ),
    );
  }
}
