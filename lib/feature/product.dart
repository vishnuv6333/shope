import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controller/product_controller.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);
  ProductController loginController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "09 Wed 2023",
          style: TextStyle(color: HexColor("#030303"), fontFamily: "yugothib"),
        ),
      ),
      bottomNavigationBar: Container(
        color: HexColor('#718341'),
        height: 68,
        width: MediaQuery.of(context).size.width,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [
                Text(
                  "Total",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "yugothib"),
                ),
                Icon(
                  Icons.currency_rupee_outlined,
                  color: Colors.white,
                ),
                Text(
                  "15",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "yugothib"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 32),
            height: 38,
            width: 129,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Center(
                child: Text(
              "Place Order",
              style: TextStyle(
                  color: HexColor('#718341'),
                  fontSize: 17,
                  fontFamily: "yugothib"),
            )),
          ),
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "Cateen",
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: "yugothib",
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 32, right: 52, bottom: 11),
                  child: ListTile(
                    tileColor: Colors.amber,
                    leading: Image.asset("assets/img/Lay.png"),
                    title: const Text("Paripu vada"),
                    subtitle: const Text("33"),
                    trailing: SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "-",
                            style: TextStyle(fontSize: 20),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(3)),
                                border: Border.all(color: HexColor("#718341"))),
                            child: Center(child: Text("0")),
                          ),
                          const Text("+")
                        ],
                      ),
                    ),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
