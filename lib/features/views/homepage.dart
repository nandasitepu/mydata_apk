// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/layouts/my_appbar.dart';
import 'package:mydata_apk/core/layouts/my_bottomnav.dart';
import 'package:mydata_apk/features/views/pages/my_favorite.dart';
import 'package:mydata_apk/features/views/pages/my_home.dart';
import 'package:mydata_apk/features/views/pages/my_list.dart';
import 'package:mydata_apk/features/views/pages/my_setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 3;
  //
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages
  final _pages = [
    MyHome(),
    MyList(),
    MySetting(),
    MyFavorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(text: "MY DATA"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNav(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
      ),
    );
  }
}
