import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/layouts/my_appbar.dart';
import 'package:mydata_apk/core/layouts/my_drawer.dart';
import 'package:mydata_apk/features/views/homepage.dart';

class MyHukum extends StatefulWidget {
  const MyHukum({super.key});

  @override
  State<MyHukum> createState() => _MyHukumState();
}

class _MyHukumState extends State<MyHukum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: MyAppBar(
          text: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Hukum",
                style: GoogleFonts.bebasNeue(fontSize: 32),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              height: 200,
            ),
            Container(
              color: Colors.purple,
              height: 200,
            ),
            Container(
              color: Colors.grey,
              height: 200,
            ),
            Container(
              color: Colors.green,
              height: 200,
            ),
            Container(
              color: Colors.blue,
              height: 200,
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
