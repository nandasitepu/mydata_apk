import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/constants.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String myName;
  late String email;
  late String photoUrl;

  @override
  void initState() {
    getProfile();
    super.initState();
  }

  Future<void> getProfile() async {
    myName = '';
    email = '';
    photoUrl = '';

    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      myName = prefs.getString('name').toString();
      email = prefs.getString('email').toString();
      photoUrl = prefs.getString('picture').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Profile Page"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            photoUrl.isEmpty
                // ? Image.network(noImageNetwork)
                ? Image.asset(noImageLocal)
                : Image.network(
                    photoUrl == 'null' ? noImageNetwork : photoUrl,
                    width: 100,
                    height: 100,
                  ),

            const Divider(),
            // Text(
            //   photoUrl,
            //   style: GoogleFonts.bebasNeue(fontSize: 32),
            // ),
            Text(
              myName,
              style: GoogleFonts.bebasNeue(fontSize: 32),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              email,
              style: GoogleFonts.bebasNeue(fontSize: 32),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.go("/homepage");
                      },
                      child: const Text("Homepage"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await MyGoogleSignIn.myLogout();
                        if (context.mounted) {
                          context.go("/login");
                        }
                      },
                      child: const Text("Logout"),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                  height: 5,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
