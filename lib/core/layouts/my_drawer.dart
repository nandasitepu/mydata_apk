import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[400],
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
                Navigator.of(context).pop();
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
            Expanded(
              flex: 5,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Expanded(
                  flex: 6,
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade100,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Text("UU"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade100,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Text("PP"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade100,
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Text("Perpres"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(5),
                        color: Colors.white,
                        child: const Text("Permen"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: const Text("Pergub"),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: const Text("Perbub"),
                      ),
                    ],
                  ),
                ),
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
