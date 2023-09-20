// ignore_for_file: prefer_const_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/my_card_menu.dart';
import 'package:mydata_apk/core/components/my_card_populer.dart';
import 'package:mydata_apk/core/constants.dart';

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
    ["UU", imageOne, Colors.white, '/hukum'],
    ["PP", imageTwo, Colors.white, '/hukum'],
    ["Perpres", imageThree, Colors.white, '/hukum'],
    ["Permen", imageFour, Colors.white, '/hukum'],
    ["Pergub", imageFive, Colors.white, '/hukum'],
    ["Perbup", imageSix, Colors.white, '/hukum'],
  ];

  //
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      " |   Hukum Indonesia",
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
                //

                Divider(
                  thickness: 2,
                  color: Colors.blue,
                ),

                //Menu
                Container(
                  height: 250,
                  padding: EdgeInsets.all(5),
                  child: GridView.builder(
                    itemCount: cardMenu.length,
                    itemBuilder: (context, index) {
                      return MyCardMenu(
                        menuTitle: cardMenu[index][0],
                        imageName: cardMenu[index][1],
                        menuColor: cardMenu[index][2],
                        link: cardMenu[index][3],
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
        ],
      ),
    );
  }
}