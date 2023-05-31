import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "09 Wed 2023",
          style: TextStyle(color: HexColor("#030303")),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text("Cateen"),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: ((context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 12, bottom: 11),
                  child: ListTile(
                    leading: Image.asset("assets/img/Lay.png"),
                    title: const Text("Paripu vada"),
                    subtitle: const Text("33"),
                    trailing: SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("-"),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(3)),
                                border: Border.all(color: HexColor("#718341"))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("1"),
                            ),
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
