// ignore_for_file: prefer_const_constructors

// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_button.dart';
import 'package:mydata_apk/core/components/my_textfield.dart';
import 'package:mydata_apk/core/constants.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';
import 'package:mydata_apk/features/views/welcomepage.dart';
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
  }

  Future gSignIn() async {
    await MyGogleSignIn.mylogin();
    final user = await MyGogleSignIn.mylogin();

    if (user == null) {
      return SnackBar(content: Text("Sign In Failed"));
    } else {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MyWelcome(user: user)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
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
                imageLoginPage,
              ),

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
                        backgroundColor: Colors.white70,
                        text: "Register",
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                height: 50,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: gSignIn,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.login_outlined,
                          color: Colors.red,
                        ),
                        Text(
                          "Sign In With Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
