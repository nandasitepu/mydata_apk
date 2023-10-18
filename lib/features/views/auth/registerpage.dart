import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydata_apk/core/components/utilities/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Register Page",
                  style: GoogleFonts.bebasNeue(fontSize: 32),
                ),
                const SizedBox(
                  height: 50,
                ),
                MyTextField(
                  controller: usernameController,
                  hintText: "UserName",
                  obscureText: false,
                  prefixIcon: const Icon(Icons.account_box_outlined),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                  prefixIcon: const Icon(Icons.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                  prefixIcon: const Icon(Icons.security_rounded),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.black,
                        )),
                        child: const Icon(Icons.app_registration_rounded),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/login');
                          },
                          child: const Text("Register"),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.go('/login');
                  },
                  child: const Text("Back Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
