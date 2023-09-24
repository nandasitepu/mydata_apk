import 'package:flutter/material.dart';

class MyPopUpMenu extends StatefulWidget {
  const MyPopUpMenu({super.key});

  @override
  State<MyPopUpMenu> createState() => _MyPopUpMenuState();
}

class _MyPopUpMenuState extends State<MyPopUpMenu> {
  var selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        color: Colors.blue,
        icon: const Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        offset: const Offset(0, 50),
        itemBuilder: (context) => const [
              PopupMenuItem(
                value: "/loginpage",
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: "/logout",
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
        onSelected: (value) {
          setState(() {
            selectedMenu = value;
          });

          Navigator.popAndPushNamed(context, value);
        });
  }
}
