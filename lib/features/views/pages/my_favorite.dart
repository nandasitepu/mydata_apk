import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/my_card_populer.dart';

class MyFavorite extends StatelessWidget {
  const MyFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Favorite",
            style: GoogleFonts.bebasNeue(fontSize: 36),
          ),
          const Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const MyCardPopuler();
                }),
          ),
        ],
      ),
    );
  }
}
