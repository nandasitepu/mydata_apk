// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/my_card_menu.dart';
import 'package:mydata_apk/core/components/my_card_populer.dart';
import 'package:mydata_apk/core/constants.dart';
import 'package:mydata_apk/core/layouts/my_appbar.dart';
import 'package:mydata_apk/core/layouts/my_bottomnav.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String token = '';

  @override
  void initState() {
    super.initState();
    // getCred();
  }

  List cardMenu = [
    ["UU", imageOne, Colors.white],
    ["PP", imageTwo, Colors.white],
    ["Perpres", imageThree, Colors.white],
    ["Permen", imageFour, Colors.white],
    ["Pergub", imageFive, Colors.white],
    ["Perbup", imageSix, Colors.white],
  ];
  // Menu Function
  void _menu1() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: MyAppBar(text: "Home"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "MY",
                    style: GoogleFonts.bebasNeue(fontSize: 36),
                  ),
                  Text(
                    "DATA",
                    style: GoogleFonts.agdasima(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    " | Hukum Indonesia",
                    style: GoogleFonts.agdasima(
                      fontSize: 24,
                    ),
                  ),
                  Icon(
                    Icons.search_outlined,
                    size: 32,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            //

            Divider(
              thickness: 2,
              color: Colors.blue,
            ),

            //Menu
            Container(
              height: 220,
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: cardMenu.length,
                itemBuilder: (context, index) {
                  return MyCardMenu(
                    menuTitle: cardMenu[index][0],
                    imageName: cardMenu[index][1],
                    menuColor: cardMenu[index][2],
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
              ),
            ),

            Divider(
              thickness: 2,
              color: Colors.blue,
            ),
            //Peraturan Terbaru
            Center(
              child: Text(
                "Peraturan Populer",
                style: GoogleFonts.bebasNeue(fontSize: 36),
              ),
            ),
            //List Peraturan
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                children: const [
                  MyCardPopuler(),
                  MyCardPopuler(),
                  MyCardPopuler(),
                  MyCardPopuler(),
                  MyCardPopuler(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNav(),
    );
  }
}
