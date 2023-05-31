import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../const/baseurl.dart';
import '../model/login.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  RxBool passwordvisible = true.obs;
  ServerAdrs myObject = ServerAdrs();
  Future<void> login() async {
    try {
      final uri = Uri.parse(myObject.baseUrl + 'login');
      final headers = {'Accept': 'application/json'};
      var jsonBody = {
        "username": '+91${email.value}',
        "password": password.value,
        "store_id": '10'
      };
      final encoding = Encoding.getByName('utf-8');

      var response =
          await post(uri, headers: headers, body: jsonBody, encoding: encoding);
      if (response.statusCode == 200) {
        var res = loginFromJson(response.body);
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("user_token", res.token.toString());
        Get.toNamed('/product');
      } else {
        tosterMessage("Invalid number or user name");
      }
    } catch (e) {}
  }
}

tosterMessage([String? string]) {
  Fluttertoast.showToast(
    msg: string.toString(),
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black87,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
