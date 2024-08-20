import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screen/cart_screen.dart';
import 'package:flutter_shopping_app/screen/favorite_screen.dart';
import 'package:flutter_shopping_app/screen/home_screen.dart';
import 'package:flutter_shopping_app/screen/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = [
    HomePage(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
        floatingActionButton: SafeArea(
          child: FloatingActionButton(
            onPressed: () => {},
            child: Icon(
              Icons.qr_code,
              size: 15,
            ),
            backgroundColor: Color.fromARGB(172, 255, 23, 23),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              CupertinoIcons.home,
              CupertinoIcons.cart,
              CupertinoIcons.heart,
              CupertinoIcons.profile_circled
            ],
            inactiveColor: Colors.black,
            activeColor: Color.fromARGB(172, 255, 23, 23),
            iconSize: 25,
            leftCornerRadius: 10,
            rightCornerRadius: 10,
            elevation: 0,
            gapLocation: GapLocation.center,
            activeIndex: pageIndex,
            onTap: (index) {
              setState(() {
                pageIndex = index;
              });
            }));
  }
}
