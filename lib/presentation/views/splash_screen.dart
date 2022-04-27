import 'dart:async';
import 'package:booster/booster.dart';
import 'package:ez_go_final/Controller/authController.dart';
import 'package:ez_go_final/presentation/views/signup_login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_view.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    Timer(Duration(seconds: 2), () {
      if (FirebaseAuth.instance.currentUser.uid.isNotEmpty) {
        print(true);
        Get.to(Home(), transition: Transition.cupertino);
      } else
        Get.offAll(() => SignupLogin());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: Booster.screenHeight(context),
          width: Booster.screenWidth(context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/splash_screen_bg.png'))),
          child: Column(
            children: [
              Booster.verticalSpace(140),
              Image.asset(
                'assets/images/logo.png',
                width: 118,
                height: 170,
              ),
            ],
          )),
    );
  }
}
