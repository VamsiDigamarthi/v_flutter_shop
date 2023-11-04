import 'package:flutter/material.dart';
import 'package:shop_now/page_views/first_page.dart';
import 'package:shop_now/page_views/second_page.dart';
import 'package:shop_now/page_views/third_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();

  final List<Widget> _list = <Widget>[
    const FirstPageView(),
    const SecondPage(),
    const ThirdPage()
  ];

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _list,
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}
