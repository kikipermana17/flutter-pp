import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/kategori_model.dart';

class KategoriService {
  static Future<KategoriModel> fetchKategoriData() async {
    final response = await http.get(
        Uri.parse('https://penentuanwisatabandung.herokuapp.com/api/kategori'));

    if (response.statusCode == 200) {
      var data = response.body;
      return KategoriModel.fromJson(jsonDecode(data));
    } else {
      throw Exception();
    }
  }
}
