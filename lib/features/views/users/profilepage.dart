import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  // void getCred() async {
  //   String googlemail = '';
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   googlemail = pref.getString("email")!;
  //   print(googlemail);
  // }

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 75,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              getCred().googlemail,
              style: GoogleFonts.bebasNeue(fontSize: 32),
            ),
            const SizedBox(
              height: 50,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
