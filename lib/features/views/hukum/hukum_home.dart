import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/layouts/my_appbar.dart';
import 'package:mydata_apk/core/components/layouts/my_drawer.dart';
import 'package:mydata_apk/core/components/utilities/my_card_menu.dart';
import 'package:mydata_apk/core/constants.dart';

class HukumHome extends StatefulWidget {
  const HukumHome({super.key});

  @override
  State<HukumHome> createState() => _HukumHomeState();
}

class _HukumHomeState extends State<HukumHome> {
  List cardMenu = [
    ["Konsultasi", imageOne, Colors.white, 'hukum'],
    ["Layanan", imageTwo, Colors.white, 'hukum'],
    ["Institusi", imageThree, Colors.white, 'hukum.institusi'],
    ["Putusan", imageFour, Colors.white, 'hukum'],
    ["Peraturan", imageFive, Colors.white, 'peraturan'],
    ["Advokat", imageSix, Colors.white, 'hukum.kasus'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar(
          title: Text(
            "Peraturan",
            style: GoogleFonts.bebasNeue(fontSize: 24),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(40),
        height: 300,
        padding: const EdgeInsets.all(5),
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
