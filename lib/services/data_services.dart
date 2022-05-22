import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:int_appone/model/data_model.dart';

class DataServices {
  String baseUrl = "https://sabhinav3.github.io/ata_data";
  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/ata_data.json';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        print(list);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
