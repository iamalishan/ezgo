import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/get_approved_to_host_widget.dart';
import 'package:ez_go_final/presentation/views/profile_photo_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tabbar.dart';

class InformationRequired extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Booster.dynamicFontSize(
            label: 'Get Approved To Host',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff262626),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child:  InkWell(
              onTap: ()=>Get.back(),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Booster.verticalSpace(25),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Booster.dynamicFontSize(
                    label:
                        'You need to provide us some information before you able to share your car',
                    fontSize: 13.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    isAlignCenter: false,
                    lineHeight: 1.2),
              ),
              Booster.verticalSpace(60),
              GetApprovedToHostContainer(
                onTap: () {},
                text: 'Profile Photo',
                text1: 'Your EZ-GO host will use it to identity you pickup',
                image: 'assets/images/person.png',
              ),
              Booster.verticalSpace(35),
              GetApprovedToHostContainer(
                onTap: () {},
                text: 'Phone Number',
                text1:
                    'We send you a verification code to help secure your account',
                image: 'assets/images/phone-call (1).png',
              ),
              Booster.verticalSpace(35),
              GetApprovedToHostContainer(
                onTap: () {},
                text: 'Vehicle Info & Documents',
                text1:
                    'We send you a verification code to help secure your account',
                image: 'assets/images/sports-car.png',
              ),
              Booster.verticalSpace(35),
              GetApprovedToHostContainer(
                onTap: () {},
                text: 'Driver License',
                text1:
                    'We send you a verification code to help secure your account',
                image: 'assets/images/driving-license_1.png',
              ),
              Booster.verticalSpace(70),
              AppButton(
                  onTap: () {
                     Get.to(BlackTabBarView(),
                        transition: Transition.cupertino);
                  },
                  text: 'Continue',color: Color(0xffF51C17),),
            ],
          ),
        ),
      ),
    );
  }
}
