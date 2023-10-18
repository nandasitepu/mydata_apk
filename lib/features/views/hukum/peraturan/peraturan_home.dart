import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/layouts/my_appbar.dart';
import 'package:mydata_apk/core/components/layouts/my_drawer.dart';
import 'package:mydata_apk/features/views/hukum/peraturan/peraturan_stats.dart';

class PeraturanHome extends StatelessWidget {
  const PeraturanHome({super.key});

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
      body: const PeraturanStats(),
      drawer: const MyDrawer(),
    );
  }
}
