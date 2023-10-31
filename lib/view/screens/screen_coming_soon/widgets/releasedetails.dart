import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/utils/styles/text_styles.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ReleaseDetails extends StatelessWidget {
  ReleaseDetails({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
        initialVideoId: 'D7eFpRf4tac',
        flags: YoutubePlayerFlags(autoPlay: true, mute: true));
    return Container(
      height: 500,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: YoutubePlayer(
              controller: _controller,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 230,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: 30,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Remind me",
                            style: StyleConstant.stylewhiteclr,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            size: 30,
                            color: ColorConstant.textColor,
                          ),
                          Text(
                            "Share",
                            style: StyleConstant.stylewhiteclr,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Season 1 coming on December 14",
                            style: StyleConstant.stylegreyclr,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Castle & Castle",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: 350,
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam enim non posuere pulvinar diam.",
                              style: StyleConstant.stylegreyclr,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Staemy . Soapy .Slowburn . Suspendful .Teen . Mystery .",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
