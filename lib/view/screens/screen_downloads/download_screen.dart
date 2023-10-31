import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/utils/styles/text_styles.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Smart Downloads",
              style: TextStyle(color: ColorConstant.textColor, fontSize: 18),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Introducing Downloads for you",
              style: TextStyle(
                  color: ColorConstant.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa id ut ipsum aliquam  enim non posuere pulvinar diam.",
                  style: StyleConstant.stylewhiteclr,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: ColorConstant.greyshade,
              radius: 80,
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(353, 40)),
                onPressed: () {},
                child: Text("Set Up")),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.greyshade,
                minimumSize: Size(239, 33)),
            onPressed: () {},
            child: Text(
              "Find something to download",
              style: TextStyle(
                  color: ColorConstant.textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ))
      ],
    );
  }
}
