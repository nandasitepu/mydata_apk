import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HukumBody extends StatelessWidget {
  const HukumBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Undang-Undang"),
            subtitle: const Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.list_alt_outlined),
              onPressed: () {
                context.go('/hukum/index');
              },
            ),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Peraturan Pemerintah"),
            subtitle: const Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.list_alt_outlined),
              onPressed: () {
                context.go('/hukum/search');
              },
            ),
          ),
          const ListTile(
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
          const ListTile(
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
          const ListTile(
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
