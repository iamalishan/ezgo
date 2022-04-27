import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:ez_go_final/presentation/views/signup_login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Earnings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.5,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Booster.dynamicFontSize(
              label: 'Earnings',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      backgroundColor: Color(0xffF1F2F4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Booster.dynamicFontSize(
              label: 'No Earnings',
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black),
          Booster.verticalSpace(15),
          Booster.dynamicFontSize(
              label: 'Add a bank account to receive payments',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black),
          Booster.verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: AppButtonTransparent(onTap: () {
              Get.to(SignupLogin(),
                  transition: Transition.cupertino);
            },
                text: 'Add Account'),
          )
        ],
      ),
    );
  }
}
