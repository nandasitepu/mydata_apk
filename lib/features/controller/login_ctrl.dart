// Credential
// ignore_for_file: unused_local_variable

import 'package:shared_preferences/shared_preferences.dart';

@override
void getCred() async {
  String token = '';
  SharedPreferences pref = await SharedPreferences.getInstance();
  token = pref.getString("login")!;
}
