import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        itemBuilder: (context) => [
              const PopupMenuItem(
                value: "profile",
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: "logout",
                onTap: () => logout(),
                child: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
        onSelected: (value) {
          setState(() {
            selectedMenu = value;
          });
          context.pop();
          context.goNamed(value);
        });
  }
}

void logout() async {
  SharedPreferences pref = await SharedPreferences.getInstance();
  await pref.clear();
}
