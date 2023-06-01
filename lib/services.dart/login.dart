import 'dart:convert';
import 'package:http/http.dart' as http;

import '../const/baseurl.dart';

class ProductService {
  Future<dynamic> getProduct() async {
    var response = await http.get(
      Uri.parse(
        ServerAdrs().baseUrl + 'add-to-cart',
      ),
      headers: {'Accept': 'application/json'},
    );
    return response;
  }
}
