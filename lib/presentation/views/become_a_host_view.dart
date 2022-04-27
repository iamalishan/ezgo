import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_circle.dart';
import 'package:ez_go_final/presentation/elements/become_a_host_widget.dart';
import 'package:ez_go_final/presentation/views/information_required_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BecomeAHost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Booster.dynamicFontSize(
            label: 'Become a Host',
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Color(0xff2F2F2F)),
        centerTitle: true,
        elevation: 8,
        backgroundColor: Colors.white,
        leading:  InkWell(
          onTap: ()=>Get.back(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/man_car.png',
              width: MediaQuery.of(context).size.width,
            ),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 40),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Booster.dynamicFontSize(
                    label: 'Earn an Average of 706\$/ month',
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Color(
                      0xff2F2F2F,
                    ),
                    lineHeight: 1.2,
                    isAlignCenter: false),
              ),
            ),
            Booster.verticalSpace(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Booster.dynamicFontSize(
                    label:
                        'Join hundreds of thousands of host earning money on EZ-GO, the world largest car sharing market',
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2F2F2F),
                    isAlignCenter: false,
                    lineHeight: 1.3),
              ),
            ),
            Booster.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  BecomeAHostContainer(
                      onTap: () {},
                      text: 'Let your car work for you',
                      text1:
                          'Make your travel easy knowing that customer support is available 24/7 at EZ-Go for your assistance with just a single tap away.'),
                  BecomeAHostContainer(
                      onTap: () {},
                      text: 'Host with confidence',
                      text1:
                          'Easily find the best ride for you from a collection of hundreds of models and get it delivered  where you want.'),
                ],
              ),
            ),
            Booster.verticalSpace(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AppButton(
                  onTap: () {
                    Get.to(InformationRequired(),
                        transition: Transition.cupertino);
                  },
                  text: 'Get Started',color: Color(0xffF51C17),),
            ),
            Booster.verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
