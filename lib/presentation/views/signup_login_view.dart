import 'package:booster/booster.dart';
import 'package:ez_go_final/Controller/authController.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_grey.dart';
import 'package:ez_go_final/presentation/elements/app_button_circle.dart';
import 'package:ez_go_final/presentation/views/createAccount.dart';
import 'package:ez_go_final/presentation/views/home_view.dart';
import 'package:ez_go_final/presentation/views/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'terms_policy_view.dart';

class SignupLogin extends StatelessWidget {
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
                  Booster.verticalSpace(50),
                  Booster.dynamicFontSize(
                      label: 'Create your free account',
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  Booster.verticalSpace(20),
                  AppButtonCircle(
                    onTap: () {},
                    text: 'Continue with Facebook',
                    color: Color(0xff3A579B),
                    icon: Icon(Icons.facebook),
                  ),
                  Booster.verticalSpace(10),
                  AppButtonCircle(
                    icon: Icon(Icons.email, color: Color(0xffDF4A32)),
                    onTap: () {
                      authController.signInWithgmail();
                    },
                    text: 'Continue with Gmail',
                    color: Color(0xffDF4A32),
                  ),
                  Booster.verticalSpace(10),
                  AppButtonGrey(
                      onTap: () {
                        Get.to(CreateAccount());
                        // authController.signout();
                        // authController.signInWithEmailAndPassword(
                        //     email: "test@gmail.com", password: "123456");
                      },
                      text: 'Create Account'),
                  Booster.verticalSpace(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Booster.dynamicFontSize(
                          label: 'By continuing in, agree to our',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      InkWell(
                        onTap: () => Get.to(() => TermsAndPolicy()),
                        child: Booster.dynamicFontSize(
                            label: 'terms and conditions',
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            isUnderline: true),
                      ),
                    ],
                  ),
                  Booster.verticalSpace(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Booster.dynamicFontSize(
                          label: 'Already on EZ-GO ?',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      InkWell(
                        onTap: () {
                          authController.signInWithEmailAndPassword(
                              email: "test@gmail.com", password: "123456");

                          // Get.to(Login());
                        },
                        child: Booster.dynamicFontSize(
                            label: 'Login here',
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
