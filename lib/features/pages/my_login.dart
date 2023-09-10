// ignore_for_file: prefer_const_constructors

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_button.dart';
import 'package:mydata_apk/core/components/my_textfield.dart';
import 'package:mydata_apk/core/constants.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:http/http.dart' as http;

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
// text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    Navigator.popAndPushNamed(context, "/homepage");

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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("M Y - D A T A - ID")),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 50),
              Image.asset(
                height: 100,
                imageOne,
              ),
              // logo
              // const Icon(
              //   Icons.lock,
              //   size: 30,
              //   color: Colors.grey,
              // ),
              const SizedBox(height: 20),
              // Sign In
              Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),
              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'E - mail',
                obscureText: false,
                prefixIcon: Icon(Icons.email),
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icon(Icons.password),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: MyButton(
                        onTap: () {
                          login();
                        },
                        backgroundColor: Colors.white,
                        text: "Sign In",
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: MyButton(
                        onTap: () {},
                        backgroundColor: Colors.grey,
                        text: "Register",
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
