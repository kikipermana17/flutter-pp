import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/wisata_model.dart';

class WisataService {
  static Future<WisataModel> fetchWisataData() async {
    final response = await http.get(
        Uri.parse('https://penentuanwisatabandung.herokuapp.com/api/wisata'));

    if (response.statusCode == 200) {
      var data = response.body;
      return WisataModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
