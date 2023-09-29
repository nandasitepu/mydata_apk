import 'package:flutter/material.dart';

class MyHukumList extends StatelessWidget {
  const MyHukumList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Search
            Container(
              color: Colors.grey,
              padding: const EdgeInsets.all(20),
              child: const SearchBar(
                hintText: "Search",
                trailing: [Icon(Icons.search)],
              ),
            ),
            // Terbaru
            Container(
              padding: const EdgeInsets.all(20),
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              child: ListView(),
            ),

            // Populer
            Container(
              padding: const EdgeInsets.all(20),
              height: 500,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(),
            ),
          ],
        ),
      ),
    );
  }
}
