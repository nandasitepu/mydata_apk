import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyWelcome extends StatefulWidget {
  final GoogleSignInAccount user;

  const MyWelcome({
    super.key,
    required this.user,
  });

  @override
  State<MyWelcome> createState() => _MyWelcomeState();
}

class _MyWelcomeState extends State<MyWelcome> {
  // set user for shared prefererences
  Future<void> setSharedData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("name", widget.user.displayName.toString());
    pref.setString("email", widget.user.email.toString());
    pref.setString("picture", widget.user.photoUrl.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(widget.user.photoUrl!),
          ),
          Text(widget.user.displayName!),
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
          )
        ],
      ),
    );
  }
}
