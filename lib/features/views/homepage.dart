// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/my_popupmenu.dart';
import 'package:mydata_apk/core/layouts/my_appbar.dart';
import 'package:mydata_apk/core/layouts/my_bottomnav.dart';
import 'package:mydata_apk/core/layouts/my_drawer.dart';
import 'package:mydata_apk/features/views/tab/my_favorite.dart';
import 'package:mydata_apk/features/views/tab/my_home.dart';
import 'package:mydata_apk/features/views/tab/my_list.dart';
import 'package:mydata_apk/features/views/tab/my_setting.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
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
    // MyTest(),
    MyFavorite(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(
          text: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "MYDATA",
                style: GoogleFonts.bebasNeue(fontSize: 32),
              ),
              Text(
                " - Hukum",
                style: GoogleFonts.agdasima(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNav(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
      ),
      drawer: MyDrawer(),
      endDrawer: MyPopUpMenu(),
    );
  }
}
