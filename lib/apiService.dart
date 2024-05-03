import 'dart:convert';

import 'package:aaaa/Model/ModelProducts.dart';
import 'package:http/http.dart' as http;

import 'Model/Products.dart';

class ApiServices {
  Future<List<Products>?> fetchProducts() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/products"));

    if (response.statusCode == 200) {
      var jsonnn = jsonDecode(response.body);
      var productss = ModelProducts.fromJson(jsonnn);

      var studentlist = productss.products;
      return studentlist;
    } else {
      throw Exception("error");
    }
    }
}