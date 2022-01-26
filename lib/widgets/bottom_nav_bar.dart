import 'package:flutter/material.dart';
import 'package:relaxing_app/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: size.height * 0.1,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            title: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
            press: () {},
          ),
          BottomNavItem(
            title: 'All Exercises',
            svgSrc: 'assets/icons/gym.svg',
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            title: 'Settings',
            svgSrc: 'assets/icons/Settings.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
