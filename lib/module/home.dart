import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../controller/login_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  LoginController loginController = Get.put(LoginController());
  final FocusNode passwordFocus = FocusNode();
  final FocusNode mobileFocus = FocusNode();

  void login() {
    mobileFocus.unfocus();
    passwordFocus.unfocus();
  }

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
              SizedBox(
                child: Image.asset(
                  "assets/img/image.svg",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 40),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: TextFormField(
                              maxLength: 10,
                              focusNode: mobileFocus,
                              keyboardType: TextInputType.number,
                              autofocus: false,
                              textAlign: TextAlign.start,
                              textInputAction: TextInputAction.done,
                              controller: emailTextEditingController,
                              onChanged: (Value) {
                                loginController.email.value = Value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter phone';
                                }
                                return null;
                              },
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                prefixText: '+91',
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F3F2F2")),
                                ),
                                fillColor: Colors.transparent,
                                alignLabelWithHint: true,
                                filled: true,
                                label: const Text(
                                  'Enter Phone',
                                  style: TextStyle(
                                      fontFamily: "Axiforma",
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                                suffix: Obx(() => Icon(
                                      Icons.check,
                                      size: 18,
                                      color:
                                          loginController.email.value.length ==
                                                  10
                                              ? Colors.green
                                              : Colors.grey,
                                    )),
                              ))),
                      Padding(
                          padding: const EdgeInsets.all(30),
                          child: Obx(() => TextFormField(
                              obscureText:
                                  loginController.passwordvisible.value,
                              keyboardType: TextInputType.visiblePassword,
                              focusNode: passwordFocus,
                              autofocus: false,
                              textAlign: TextAlign.start,
                              textInputAction: TextInputAction.done,
                              controller: passwordTextEditingController,
                              onChanged: (value) {
                                loginController.password.value = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter password';
                                }
                                if (value.length < 6) {
                                  return 'The password must be at least 6 characters.';
                                }
                                return null;
                              },
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: HexColor("#F3F2F2")),
                                ),
                                fillColor: Colors.transparent,
                                alignLabelWithHint: true,
                                filled: true,
                                label: const Text(
                                  'Enter Password',
                                  style: TextStyle(
                                      fontFamily: "yugothib",
                                      fontSize: 13,
                                      color: Colors.grey),
                                ),
                                suffix: InkWell(
                                  onTap: () {
                                    if (loginController.passwordvisible.value ==
                                        true) {
                                      loginController.passwordvisible.value =
                                          false;
                                    } else {
                                      loginController.passwordvisible.value =
                                          true;
                                    }
                                  },
                                  child: Obx(() => Icon(
                                        loginController.passwordvisible.value
                                            ? Icons.visibility_rounded
                                            : Icons.visibility_off_rounded,
                                        size: 19,
                                      )),
                                ),
                              )))),
                    ],
                  )),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    login();
                    loginController.login();
                  }
                },
                child: Container(
                  height: 50,
                  width: 185,
                  decoration: BoxDecoration(
                      color: HexColor('#718341'),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: const Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "yugothib"),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
