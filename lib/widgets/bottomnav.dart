import 'package:flutter/material.dart';
import 'package:training/configs/constant.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
      child: BottomNavigationBar(
          selectedIconTheme: IconThemeData(color: Color(0xFF200087)),
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          iconSize: size.height * 0.05,
          items: custom_constant.bottomNavItems
              .map((e) => BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(e["icon"]),
                  ),
                  label: "",
                  tooltip: e["name"]))
              .toList()),
    );
  }
}
