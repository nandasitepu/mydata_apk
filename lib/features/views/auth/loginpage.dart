import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mydata_apk/core/components/utilities/my_button.dart';
import 'package:mydata_apk/core/components/utilities/my_textfield.dart';
import 'package:mydata_apk/core/constants.dart';
import 'package:mydata_apk/features/controllers/auth/google_login_ctrl.dart';
import 'package:http/http.dart' as http;

import 'package:shared_preferences/shared_preferences.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
// text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // void login() async {
  //   if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
  //     var response = await http.post(Uri.parse("https://reqres.in/api/login"),
  //         body: ({
  //           "email": emailController.text,
  //           "password": passwordController.text,
  //         }));
  //     if (response.statusCode == 200) {
  //       final body = jsonDecode(response.body);
  //       if (!context.mounted) return;
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text("Token: ${body['token']}")));

  //       SharedPreferences pref = await SharedPreferences.getInstance();
  //       await pref.setString("login", body['token']);
<<<<<<< HEAD
  //       await pref.setBool("isLoggedIn", true);
=======
>>>>>>> 152c9f5457c1d71e8853d03eb74e1827df01e66f
  //       if (!context.mounted) return;
  //       context.pushReplacementNamed('profile');
  //     } else {
  //       if (!context.mounted) return;
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(const SnackBar(content: Text("Invalid Credetials")));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(const SnackBar(content: Text("Blank Value Form")));
  //   }
  // }

  void login() async {
    context.go('/homepage');
  }

  void register() async {
    context.go('/register');
  }

  Future gSignIn() async {
    // await MyGoogleSignIn.mylogin();
    final user = await MyGoogleSignIn.mylogin();

    if (user == null) {
      return const SnackBar(content: Text("Sign In Failed"));
    } else {
      if (context.mounted) {
        context.pushReplacement('/profile', extra: user);
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString("name", user.displayName.toString());
        pref.setString("email", user.email.toString());
        pref.setBool("isLoggedIn", true);
        if (user.photoUrl == null) {
          pref.setString("picture", noImageNetwork.toString());
        }

        pref.setString("picture", user.photoUrl.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(child: Text("M Y - D A T A - ID")),
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
                prefixIcon: const Icon(Icons.email),
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: const Icon(Icons.password),
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
                        onTap: () {
                          register();
                        },
                        backgroundColor: Colors.white70,
                        text: "Register",
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 2,
                height: 50,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: gSignIn,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
