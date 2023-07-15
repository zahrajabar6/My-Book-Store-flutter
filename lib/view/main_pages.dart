import 'package:book_store/constant.dart';
import 'package:book_store/view/favorites_screen.dart';
import 'package:book_store/view/notification_screen.dart';
import 'package:book_store/view/profile_screen.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'home_screen.dart';

class MyPages extends StatefulWidget {
  const MyPages({super.key});

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  //set the home page as the first page on lunching
  int index = 0;

  //list of pages
  final screens = [
    const HomePage(),
    const FavoritesPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  // list of navigation bar content
  final items = <DotNavigationBarItem>[
    /// Home
    DotNavigationBarItem(
      icon: const Icon(Iconsax.home),
      selectedColor: mainBlack,
    ),

    /// Favorite
    DotNavigationBarItem(
      icon: const Icon(Iconsax.bookmark_2),
      selectedColor: mainBlack,
    ),

    /// notification
    DotNavigationBarItem(
      icon: const Icon(
        Iconsax.notification,
      ),
      selectedColor: mainBlack,
    ),

    /// Profile
    DotNavigationBarItem(
      icon: const Icon(CupertinoIcons.person),
      selectedColor: mainBlack,
    ),
  ];

  //route to the selelcted page
  void _handleIndexChanged(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: DotNavigationBar(
          marginR: const EdgeInsets.all(8),
          paddingR: const EdgeInsets.all(8),
          currentIndex: index,
          dotIndicatorColor: mainBlack,
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          onTap: _handleIndexChanged,
          items: items,
        ),
      ),
    );
  }
}
