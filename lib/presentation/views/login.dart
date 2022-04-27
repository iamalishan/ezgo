import 'package:booster/booster.dart';
import 'package:ez_go_final/Controller/authController.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_grey.dart';
import 'package:ez_go_final/presentation/elements/app_button_circle.dart';
import 'package:ez_go_final/presentation/views/createAccount.dart';
import 'package:ez_go_final/presentation/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../elements/search_file.dart';
import 'terms_policy_view.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email = TextEditingController();

  TextEditingController _password = TextEditingController();

  bool ispassword = false;

  bool _passwordVisible = false;

  AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/signup_login_bg.png',
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 10,
                  child: InkWell(
                    onTap: () {
                      Get.to(Home(), transition: Transition.cupertino);
                    },
                    child: Booster.dynamicFontSize(
                        label: 'Skip',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Booster.verticalSpace(10),
                  Booster.verticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 5,
                      color: Color(0x80FFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: SearchField(
                        iconSuffix: IconButton(
                            icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        )),
                        ispassword: false,
                        // iconSuffix: ,
                        controller: _email,
                        label: "Enter Your Email",
                      ),
                    ),
                  ),
                  Booster.verticalSpace(10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Card(
                      elevation: 5,
                      color: Color(0x80FFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: SearchField(
                        ispassword: !_passwordVisible,
                        iconSuffix: IconButton(
                          icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black),
                          onPressed: () {
                            // Update the state i.e. toogle the state of passwordVisible variable
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        controller: _password,
                        label: "Enter Your Password",
                      ),
                    ),
                  ),
                  Booster.verticalSpace(30),
                  AppButtonGrey(
                      onTap: () {
                        authController.signInWithEmailAndPassword(
                            email: "test@gmail.com", password: "123456");
                        // authController.signout();
                        // authController.signInWithEmailAndPassword(
                        //     email: "test@gmail.com", password: "123456");
                      },
                      text: 'Login'),
                  Booster.verticalSpace(10),
                  Booster.verticalSpace(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Booster.dynamicFontSize(
                          label: 'Forgot Password ?',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      InkWell(
                        onTap: () {
                          Get.to(CreateAccount());
                        },
                        child: Booster.dynamicFontSize(
                            label: 'Reset',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            isUnderline: true),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Booster.verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
