import 'package:google_sign_in/google_sign_in.dart';

class MyGogleSignIn {
  static final _googleSignIn = GoogleSignIn();
  // Login
  static Future<GoogleSignInAccount?> mylogin() => _googleSignIn.signIn();
  //Logout
  static Future myLogout() => _googleSignIn.disconnect();
}
