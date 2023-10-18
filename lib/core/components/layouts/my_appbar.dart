import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/utilities/my_popupmenu.dart';
import 'package:mydata_apk/features/views/homepage.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  const MyAppBar({super.key, required this.title});

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
          // const MyDrawer();
        },
        icon: const Icon(Icons.view_list),
      ),
      actions: const [
        MyPopUpMenu(),
      ],
      title: Center(
        child: title,
      ),
      elevation: 0,
    );
  }
}
