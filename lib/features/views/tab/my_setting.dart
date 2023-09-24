import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySetting extends StatelessWidget {
  const MySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "Settings",
            style: GoogleFonts.bebasNeue(fontSize: 36),
          ),
          const Divider(
            thickness: 1,
            color: Colors.blue,
          ),
          const ListTile(
            leading: Icon(Icons.key),
            title: Text("Account"),
          ),
          const ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy"),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
          ),
          const ListTile(
            leading: Icon(Icons.file_download),
            title: Text("Storage & Data"),
          )
        ],
      ),
    );
  }
}
