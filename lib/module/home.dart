import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Image.asset(
        "assets/img/image2.svg",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/img/image.svg",
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 42),
                        child: TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor("#F3F2F2")),
                              ),
                              fillColor: Colors.transparent,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              alignLabelWithHint: true,
                              filled: true,
                              label: const Center(
                                  child: Text(
                                'Enter Email',
                                style: TextStyle(
                                    fontFamily: "Axiforma", fontSize: 13),
                              )),
                              suffix: Icon(Icons.check)),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter username!';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          onSaved: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              fillColor: Colors.transparent,
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              filled: true,
                              label: Center(
                                  child: Text(
                                'Enter User Password',
                                style: TextStyle(
                                    fontFamily: "Axiforma", fontSize: 13),
                              )),
                              suffix: Icon(Icons.check)),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Password !';
                            }
                            return null;
                          },
                          onChanged: (value) {},
                          onSaved: (value) {},
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 50,
                width: 185,
                decoration: BoxDecoration(
                    color: HexColor('#718341'),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
