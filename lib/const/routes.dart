import 'package:get/get.dart';
import 'package:shope/module/home.dart';

import '../feature/product.dart';

class Routes {
  static final routes = [
    GetPage(name: '/product', page: () => ProductPage()),
    GetPage(name: '/', page: () => const MyHomePage()),
  ];
}
