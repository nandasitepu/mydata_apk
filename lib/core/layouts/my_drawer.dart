import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[400],
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            ListTile(
              title: Text(
                "Menu",
                style: GoogleFonts.bebasNeue(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                context.go('/homepage');
              },
            ),
            ListTile(
              title: Text(
                "Penyimpanan",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.file_download,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Favorite",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "Hukum",
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              trailing: const Icon(
                Icons.menu_book,
                color: Colors.white,
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  "Sign Out",
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.logout,
                  color: Colors.yellow,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.popAndPushNamed(context, "/loginpage");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
