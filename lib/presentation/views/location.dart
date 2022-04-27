import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field_color.dart';
import 'package:ez_go_final/presentation/views/pricing_rate_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Location extends StatelessWidget {
  final VoidCallback onTap;
  Location(this.onTap);
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
                Booster.verticalSpace(20),
                Booster.dynamicFontSize(
                  label:
                      'Move the pin to where your want the vehicle to be delivered to',
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  isAlignCenter: false,
                ),
                Booster.verticalSpace(20),
                AppButtonTransparent(onTap: () {}, text: ' Choose Location'),
                Booster.verticalSpace(10),
                Container(
                  height: 186,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/map_1.png'),
                  )),
                ),
                Booster.verticalSpace(15),
                Booster.dynamicFontSize(
                    label: 'Set Pickup & Return Location',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                Booster.verticalSpace(10),
                Booster.dynamicFontSize(
                    label:
                        'Vehicle will be delivered to this location,this address will be visible to the host or Custodian',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    isAlignCenter: false,
                    lineHeight: 1.3),
                Booster.verticalSpace(20),
                Booster.dynamicFontSize(
                    label: 'Pickup Location',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(10),
                Row(
                  children: [
                    Expanded(
                        child: AuthTextFieldColor(
                      label: 'City',
                      color: Color(0xffFFFFFF),
                    )),
                    Booster.horizontalSpace(7),
                    Expanded(
                        child: AuthTextFieldColor(
                            label: 'Postal Code', color: Color(0xffFFFFFF))),
                  ],
                ),
                Booster.verticalSpace(10),
                AuthTextFieldColor(label: 'Street', color: Color(0xffFFFFFF)),
                Booster.verticalSpace(20),
                Booster.dynamicFontSize(
                    label: 'Return Location',
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                Booster.verticalSpace(10),
                Row(
                  children: [
                    Expanded(
                        child: AuthTextFieldColor(
                            label: 'City', color: Color(0xffFFFFFF))),
                    Booster.horizontalSpace(7),
                    Expanded(
                        child: AuthTextFieldColor(
                            label: 'Postal Code', color: Color(0xffFFFFFF))),
                  ],
                ),
                Booster.verticalSpace(10),
                AuthTextFieldColor(label: 'Street', color: Color(0xffFFFFFF)),
                Booster.verticalSpace(20),
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
