// Credential
// ignore_for_file: unused_local_variable, unused_element

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

@override
void getCred() async {
  String token = '';
  SharedPreferences pref = await SharedPreferences.getInstance();
  token = pref.getString("login")!;
}


    // if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
    //   var response = await http.post(Uri.parse("https://reqres.in/api/login"),
    //       body: ({
    //         "email": emailController.text,
    //         "password": passwordController.text,
    //       }));
    //   if (response.statusCode == 200) {
    //     final body = jsonDecode(response.body);
    //     if (!context.mounted) return;
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text("Token: ${body['token']}")));

    //     SharedPreferences pref = await SharedPreferences.getInstance();
    //     await pref.setString("login", body['token']);
    //     if (!context.mounted) return;
    //     Navigator.popAndPushNamed(context, "/homepage");
    //   } else {
    //     if (!context.mounted) return;
    //     ScaffoldMessenger.of(context)
    //         .showSnackBar(SnackBar(content: Text("Invalid Credetials")));
    //   }
    // } else {
    //   ScaffoldMessenger.of(context)
    //       .showSnackBar(SnackBar(content: Text("Blank Value Form")));
    // }

