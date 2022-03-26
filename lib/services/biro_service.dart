import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/biro_model.dart';

class BiroService {
  static Future<BiroModel> fetchBiroData() async {
    final response = await http.get(
        Uri.parse('https://penentuanwisatabandung.herokuapp.com/api/biro'));

    if (response.statusCode == 200) {
      var data = response.body;
      return BiroModel.fromJson(jsonDecode(data));
    } else {
        throw Exception();
  }
}
}