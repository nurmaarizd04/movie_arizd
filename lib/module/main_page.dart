import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_arizd/module/home/view/home_page.dart';
import 'package:movie_app_arizd/theme/colors.dart';
import 'package:remixicon/remixicon.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  List<Widget> screen = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Remix.home_line),
            Icon(Remix.bookmark_line),
            Icon(Remix.search_2_line),
            Icon(Remix.notification_line),
            Icon(Remix.user_3_line),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: bgColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screen.elementAt(_page));
  }
}
