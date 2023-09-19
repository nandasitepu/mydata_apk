import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mydata_apk/features/models/peraturan_model.dart';

class MyTest extends StatefulWidget {
  const MyTest({super.key});

  @override
  State<MyTest> createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  List<Peraturan> peraturan = [];

  // get Peraturan
  Future getPeraturan() async {
    var url = "https://sheets.googleapis.com/v4/spreadsheets/";
    var sheetID = "1TO5XIJQ0x0hU0BXbqhdWB_JTJiwHHBV0MfHD5N7ssb4/";
    var range = "values/A2:D/";
    var apiKey = "?key=AIzaSyDPj3E0XtT6UUTo6SOPksOFyuWXtiuh0BM";

    var response = await http.get(Uri.parse(url + sheetID + range + apiKey));
    var jsonData = jsonDecode(response.body);
    for (var p in jsonData['values']) {
      final data = Peraturan(id: p[0], nomor: p[1], uraian: p[2], link: p[3]);
      peraturan.add(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPeraturan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: peraturan.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(peraturan[index].id),
                  title: Text(peraturan[index].nomor),
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
