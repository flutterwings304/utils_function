import 'dart:convert';

import 'package:flutter/services.dart';

class Utils {
  static String capitalize(String str) {
    if (str.isNotEmpty) {
      List second = [];
      str.replaceAll("  ", " ");
      final nameArray = str.toLowerCase().split(" ");
      for (var e in nameArray) {
        if (e.length > 1) second.add(e);
      }
      return second.map((word) {
        String leftText =
            (word.length > 1) ? word.substring(1, word.length) : '';
        return word[0].toUpperCase() + leftText;
      }).join(' ');
    } else {
      return str;
    }
  }

  static Future readJsonData({required String path}) async {
    //read json file
    final jsondata = await rootBundle.loadString(path);
    //decode json data as data present in your json file
    final list = json.decode(jsondata) as Map;

    //map json and initialize using DataModel
    return list;
  }
}
