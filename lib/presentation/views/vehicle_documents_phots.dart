import 'package:booster/booster.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field_color.dart';
import 'package:ez_go_final/presentation/elements/dotted_border_container.dart';
import 'package:ez_go_final/presentation/elements/dotted_border_container_1.dart';
import 'package:ez_go_final/presentation/views/vehicle_information_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tabbar_3.dart';

class VehicleandDocumentsPhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Booster.verticalSpace(20),
                Booster.dynamicFontSize(
                    label:
                        'Upload serval photos of your vehicle to make it easier for people to see the condition of your vehicle',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5D5D5D),
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                DottedBorderContainer1(
                    text: 'Cover Photo', image: 'assets/images/car.png'),
                Booster.verticalSpace(13),
                Row(
                  children: [
                    Expanded(
                      child: DottedBorderContainer1(
                          text: 'Side View', image: 'assets/images/car.png'),
                    ),
                    Booster.horizontalSpace(20),
                    Expanded(
                      child: DottedBorderContainer1(
                          text: 'Front View', image: 'assets/images/car.png'),
                    ),
                  ],
                ),
                Booster.verticalSpace(13),
                Row(
                  children: [
                    Expanded(
                      child: DottedBorderContainer1(
                          text: 'Rear View', image: 'assets/images/car.png'),
                    ),
                    Booster.horizontalSpace(20),
                    Expanded(
                      child: DottedBorderContainer1(
                          text: 'Interior View',
                          image: 'assets/images/car.png'),
                    ),
                  ],
                ),
                Booster.verticalSpace(20),
                Booster.dynamicFontSize(
                    label:
                        'Upload  photos  or pdf of your vehicle Documents for EZ-GO to Verify your Vehicle',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5D5D5D),
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                DottedBorderContainer(),
                Booster.verticalSpace(13),
                Booster.dynamicFontSize(
                    label: 'Chasis Number',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: '',
                  color: Colors.transparent,
                ),
                Booster.verticalSpace(13),
                Booster.dynamicFontSize(
                    label: 'Road Tax',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                DottedBorderContainer(),
                Booster.verticalSpace(13),
                Booster.dynamicFontSize(
                    label: 'Road Tax Expiray Date',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: '',
                  color: Colors.transparent,
                ),
                Booster.verticalSpace(13),
                Booster.dynamicFontSize(
                    label: 'Insurance Paper',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    isAlignCenter: true,
                    lineHeight: 1.3),
                Booster.verticalSpace(13),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  dashPattern: [
                    6,
                    5,
                  ],
                  color: Color(0xffFF5D5D),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 152,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        child: Center(
                          child: Container(
                            height: 41,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xff707070),
                                  width: 1,
                                )),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Booster.dynamicFontSize(
                                        label: 'Upload',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Booster.verticalSpace(30),
                AppButton(
                    onTap: () {
                      Get.to(()=>BlackTabBarViewThird());
                    },
                    text: 'Save and Continue',color: Color(0xffF51C17),),
                Booster.verticalSpace(30),
              ],
            ),
          ),
        ));
  }
}
