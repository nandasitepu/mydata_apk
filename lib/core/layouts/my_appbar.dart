import 'package:flutter/material.dart';
import 'package:mydata_apk/features/views/homepage.dart';

class MyAppBar extends StatelessWidget {
  final Widget text;

  const MyAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        icon: const Icon(Icons.view_list),
      ),
      actions: [
        IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
          icon: const Icon(
            Icons.account_circle_outlined,
          ),
        ),
      ],
      title: Center(
        child: text,
      ),
      elevation: 0,
    );
  }
}
