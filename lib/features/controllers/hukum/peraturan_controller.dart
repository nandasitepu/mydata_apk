import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mydata_apk/features/models/peraturan_model.dart';

List<Peraturan> peraturan = [];

Future getPeraturan() async {
  var url = "https://sheets.googleapis.com/v4/spreadsheets/";
  var sheetID = "1TO5XIJQ0x0hU0BXbqhdWB_JTJiwHHBV0MfHD5N7ssb4/";
  // part as pages
  var part = "A12:E21";
  // var limit = 10;
  // range with pages
  var range = "values/$part";
  // key
  var apiKey = "?key=AIzaSyDPj3E0XtT6UUTo6SOPksOFyuWXtiuh0BM";

  var response = await http.get(Uri.parse(url + sheetID + range + apiKey));
  var jsonData = jsonDecode(response.body);

  //clear before get data
  peraturan.clear();

  for (var p in jsonData['values']) {
    final data = Peraturan(
      id: p[0],
      nomor: p[1],
      uraian: p[2],
      link: p[3],
    );

    peraturan.add(data);
  }
}

Future launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
