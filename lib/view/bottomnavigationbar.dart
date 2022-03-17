import 'package:flutter/material.dart';

class BnBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined), label: 'Reels'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Activity'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('icons/icon2.jpg'),
            ),
            label: 'My profile'),
      ],
    );
  }
}
