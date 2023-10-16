import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PeraturanStats extends StatelessWidget {
  const PeraturanStats({super.key});

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
              onPressed: () => context.goNamed(
                'peraturan.index',
                pathParameters: {
                  'name': "Undang-Undang",
                },
              ),
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
              onPressed: () => context.goNamed(
                'peraturan.index',
                pathParameters: {
                  'name': "Peraturan Pemerintah",
                },
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Peraturan Presiden"),
            subtitle: const Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.list_alt_outlined),
              onPressed: () => context.goNamed(
                'peraturan.index',
                pathParameters: {
                  'name': "Peraturan Presiden",
                },
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Peraturan Gubernur"),
            subtitle: const Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.list_alt_outlined),
              onPressed: () => context.goNamed(
                'peraturan.index',
                pathParameters: {
                  'name': "Peraturan Gubernur",
                },
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.abc),
            title: const Text("Peraturan Bupati"),
            subtitle: const Row(
              children: [
                Text("Total: "),
                Text("19651"),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.list_alt_outlined),
              onPressed: () => context.goNamed(
                'peraturan.index',
                pathParameters: {
                  'name': "Peraturan Pemerintah",
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
