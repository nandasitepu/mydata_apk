import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardPopuler extends StatelessWidget {
  const MyCardPopuler({super.key});

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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UU Nomor 1 Tahun 2022",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Status
              Text(
                "Berlaku",
                style: TextStyle(
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
            "Hubungan Keuangan antara Pemerintah Pusat dan Pemerintah Daerah",
            textAlign: TextAlign.left,
            style: GoogleFonts.openSans(fontSize: 14),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black,
          ),
          // File
          const Text(
            "PDF",
            textAlign: TextAlign.end,
          ),
          //
        ],
      ),
    );
  }
}
