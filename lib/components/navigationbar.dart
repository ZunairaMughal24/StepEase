import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBotNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBotNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
            color: Colors.grey[400],
            activeColor: Colors.grey[700],
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.white,
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 16,
            onTabChange: (value) => onTabChange!(value),
            gap: 8,
            tabs: const [
              GButton(icon: Icons.home, text: "Shop"),
              GButton(icon: Icons.shopping_bag_rounded, text: "Cart"),
            ]),
      ),
    );
  }
}
