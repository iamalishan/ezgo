import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:ez_go_final/presentation/views/approval_notification_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrivingLicense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            Booster.verticalSpace(30),
            Container(
              height: 164,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: Color(0xffF51C17),
                    width: 1,
                  )),
              child: Column(
                children: [
                  Booster.verticalSpace(40),
                  Image.asset(
                    'assets/images/driving-license.png',
                    height: 48,
                    width: 72.29,
                  ),
                  Booster.verticalSpace(30),
                  Booster.dynamicFontSize(
                      label: 'Upload your photo driving license',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ],
              ),
            ),
            Booster.verticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Booster.dynamicFontSize(
                    label:
                        'Enter your info exactly as it appears on your license so EZ-GO Can verify',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    lineHeight: 1.2),
              ),
            ),
            Booster.verticalSpace(25),
            Container(
              height: 61,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Booster.dynamicFontSize(
                        label: 'Expiration Date',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Booster.verticalSpace(15),
            Container(
              height: 61,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Booster.dynamicFontSize(
                        label: 'License Number',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Booster.verticalSpace(170),
            AppButton(
                onTap: () {
                },
                text: 'Save and Continue',color: Color(0xffF51C17),)
          ]),
        ),
      )),
    );
  }
}
