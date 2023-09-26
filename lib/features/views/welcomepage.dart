import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';

class MyWelcome extends StatelessWidget {
  final GoogleSignInAccount user;

  const MyWelcome({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.photoUrl!),
          ),
          Text(user.displayName!),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/homepage");
            },
            child: const Text("Homepage"),
          ),
          ElevatedButton(
            onPressed: () async {
              await MyGogleSignIn.myLogout();
              if (context.mounted) {
                Navigator.popAndPushNamed(context, "/loginpage");
              }
            },
            child: const Text("Logout"),
          )
        ],
      ),
    );
  }
}
