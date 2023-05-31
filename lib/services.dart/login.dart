import 'dart:convert';
import 'package:http/http.dart' as http;

import '../const/baseurl.dart';

class LoginService {
  static Future<dynamic> login(email, password) async {
    var response = await http.post(
        Uri.parse(
          ServerAdrs().baseUrl + 'login',
        ),
        headers: {'Accept': 'application/json'},
        body: {"username": email, "password": password, "store_id": 10});
    return response;
  }
}
