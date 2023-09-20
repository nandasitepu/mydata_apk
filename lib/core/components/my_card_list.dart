import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardList extends StatelessWidget {
  final String id, nomor, uraian, link;

  const MyCardList({
    super.key,
    required this.id,
    required this.nomor,
    required this.uraian,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Nomor
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nomor,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              // Status
              Text(
                id,
                style: const TextStyle(
                  letterSpacing: 5,
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          // Uraian
          Text(
            uraian,
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(fontSize: 14),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          // File
          Text(
            link,
            textAlign: TextAlign.start,
          ),
          //
        ],
      ),
    );
  }
}
