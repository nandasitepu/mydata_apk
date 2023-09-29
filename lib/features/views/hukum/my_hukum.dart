import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/layouts/my_drawer.dart';
import 'package:mydata_apk/features/views/hukum/hukum_body.dart';
import 'package:mydata_apk/features/views/hukum/hukum_index.dart';

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
        child: AppBar(
          title: Row(
            children: [
              Text(
                "Peraturan",
                style: GoogleFonts.bebasNeue(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
      body: const HukumBody(),
      drawer: const MyDrawer(),
    );
  }
}
