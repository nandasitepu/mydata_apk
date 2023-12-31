import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCardList2 extends StatelessWidget {
  final String id, nomor, uraian;
  final dynamic onPressed;

  const MyCardList2({
    super.key,
    required this.id,
    required this.nomor,
    required this.uraian,
    // required this.link,
    required this.onPressed,
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
          const SizedBox(
            height: 20,
          ),

          // File
<<<<<<< HEAD
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, style: BorderStyle.none),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ],
=======
          ElevatedButton(
            onPressed: () {
              onPressed;
            },
            child: const Text(
              "PDF",
              textAlign: TextAlign.start,
>>>>>>> 152c9f5457c1d71e8853d03eb74e1827df01e66f
            ),
            child: IconButton(
              onPressed: () {
                print("Clicked");
              },
              icon: const Icon(
                Icons.picture_as_pdf,
                color: Colors.blueGrey,
              ),
              alignment: Alignment.centerRight,
            ),
          ),

          //
        ],
      ),
    );
  }
}
