import 'package:flutter/material.dart';
import 'package:netflix/utils/color_constant/color.dart';
import 'package:netflix/view/screens/screen_coming_soon/comingsoon_screen.dart';
import 'package:netflix/view/screens/screen_downloads/download_screen.dart';
import 'package:netflix/view/screens/screen_home/screen_home.dart';
import 'package:netflix/view/screens/screen_more/more_screen.dart';
import 'package:netflix/view/screens/screen_search/screen_search.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentindex = 0;
  final List<Widget> _myList = [
    ScreenHome(),
    Screensearch(),
    ComingSoonScreen(),
    ScreenDownload(),
    MoreScreen(),
  ];

  void onItemTap(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.primaryColor,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: ColorConstant.primaryColor,
              selectedItemColor: ColorConstant.textColor,
              unselectedItemColor: Colors.grey.shade700,
              currentIndex: _currentindex,
              onTap: onItemTap,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.photo_library), label: "Coming Soon"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.download), label: "Downloads"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz), label: "More"),
              ]),
          body: _myList[_currentindex]),
    );
  }
}
