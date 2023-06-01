import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../const/baseurl.dart';
import '../model/product.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  static var client = http.Client();
  ServerAdrs myObject = ServerAdrs();
  final userData = GetStorage();
  Future<void> fetchProduct() async {
    try {
      var token = userData.read('user_token');
      var response = await client.get(
          Uri.parse(myObject.baseUrl + 'products?size=1&page=0'),
          headers: {
            'Accept': 'application/json',
            "Authorization": 'Bearer $token'
          });

      if (response.statusCode == 200) {
        var res = productFromJson(response.body);
      } else {}
    } catch (e) {
      print(e);
    }
  }
}
