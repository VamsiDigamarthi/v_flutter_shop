import 'package:flutter/material.dart';
import 'package:shop_now/bottom_widgets/explore_widget.dart';
import 'package:shop_now/bottom_widgets/home_widget.dart';
import 'package:shop_now/data/women_dress.dart';

class SuperMainScreen extends StatefulWidget {
  const SuperMainScreen({super.key});

  @override
  State<SuperMainScreen> createState() => _SuperMainScreenState();
}

class _SuperMainScreenState extends State<SuperMainScreen> {
  static const List<Widget> _pages = [
    HomeWidget(),
    ExploreWidget(),
    Icon(
      Icons.camera,
      size: 150,
    ),
  ];

  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final newWomenProducts = List.of(listOfWomenProducts);

    newWomenProducts.shuffle();

    return Scaffold(
      body: _pages.elementAt(bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        onTap: (value) {
          setState(() {
            bottomNavIndex = value;
          });
        },
        currentIndex: bottomNavIndex,
        selectedItemColor: const Color.fromARGB(255, 238, 99, 70),
        unselectedItemColor: Colors.grey,
        // selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 238, 99, 70)),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
            ),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: "card",
          ),
        ],
      ),
    );
  }
}
