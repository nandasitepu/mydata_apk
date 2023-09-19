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
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: currentIndex,
          onTap: onTap,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cabin_outlined,
                color: Colors.white,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assessment,
                color: Colors.white,
              ),
              label: "List",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.admin_panel_settings_outlined,
                color: Colors.white,
              ),
              label: "Settings",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ),
              label: "Favorite",
            ),
          ],
        ),
      ),
    );
  }
}
