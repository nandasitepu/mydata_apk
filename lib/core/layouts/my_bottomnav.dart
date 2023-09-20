import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const MyBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.yellow.shade200,
          unselectedItemColor: Colors.white,
          selectedFontSize: 16.0,
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.cabin_outlined,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.graphic_eq,
                color: Colors.grey.shade300,
              ),
              label: "List",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.black,
              ),
              label: "Settings",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              label: "Favorite",
            ),
          ],
        ),
      ),
    );
  }
}
