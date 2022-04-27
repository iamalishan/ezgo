import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field_color.dart';
import 'package:ez_go_final/presentation/views/location.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VehicleInformation extends StatelessWidget {
  final VoidCallback onTap;
  VehicleInformation(this.onTap);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF1F2F4),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Booster.verticalSpace(40),
                Booster.dynamicFontSize(
                    label: 'Brand and Model',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: 'Choose your car Model',
                  color: Colors.white,
                ),
                Booster.verticalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Registration Year',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: 'Registration Year',
                  color: Colors.white,
                ),
                Booster.verticalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Transmittion',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: 'Auto',
                  color: Colors.white,
                ),
                Booster.verticalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Mileage',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: 'Choose milaeage range',
                  color: Colors.white,
                ),
                Booster.verticalSpace(30),
                Booster.dynamicFontSize(
                    label: 'Plate Number',
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(13),
                AuthTextFieldColor(
                  label: 'Choose milaeage range',
                  color: Colors.white,
                ),
                Booster.verticalSpace(50),
                AppButton(
                    onTap: () => onTap(),
                    text: 'Continue',color: Color(0xffF51C17),),
                Booster.verticalSpace(20),
              ],
            ),
          ),
        ));
  }
}
