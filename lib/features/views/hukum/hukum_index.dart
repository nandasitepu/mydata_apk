import 'package:flutter/material.dart';
import 'package:mydata_apk/core/components/my_popupmenu.dart';
import 'package:mydata_apk/core/layouts/my_drawer.dart';
import 'package:mydata_apk/features/views/tab/my_list.dart';

class HukumIndex extends StatelessWidget {
  const HukumIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Peraturan Hukum Indonesia")),
      ),
      body: const MyList(),
      drawer: const MyDrawer(),
      endDrawer: const MyPopUpMenu(),
    );
  }
}
