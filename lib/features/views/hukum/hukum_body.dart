import 'package:flutter/material.dart';

class HukumBody extends StatelessWidget {
  const HukumBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("Undang-Undang"),
            subtitle: Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: Icon(Icons.list_alt_outlined),
          ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("Peraturan Pemerintah"),
            subtitle: Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: Icon(Icons.list_alt_outlined),
          ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("Peraturan Presiden"),
            subtitle: Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: Icon(Icons.list_alt_outlined),
          ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("Peraturan Gubernur"),
            subtitle: Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: Icon(Icons.list_alt_outlined),
          ),
          ListTile(
            leading: Icon(Icons.abc),
            title: Text("Peraturan Bupati"),
            subtitle: Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: Icon(Icons.list_alt_outlined),
          ),
        ],
      ),
    );
  }
}
