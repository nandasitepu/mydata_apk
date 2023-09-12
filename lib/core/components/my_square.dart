import 'package:flutter/material.dart';
import 'package:mydata_apk/core/constants.dart';

class MySquare extends StatelessWidget {
  const MySquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            imageOne,
            fit: BoxFit.fill,
            height: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "UU",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
