import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field_color.dart';
import 'package:ez_go_final/presentation/elements/container_cupertio_switch.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:ez_go_final/presentation/views/driving_license_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PricingRate extends StatefulWidget {
final VoidCallback onTap;
PricingRate(this.onTap);
  @override
  _PricingRateState createState() => _PricingRateState();
}

class _PricingRateState extends State<PricingRate> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Booster.verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SettingWidget(
              onTap: () {},
              label: 'Daily Rental',
              showSwitch: true,
              isSwitchOn: isSwitchOn,
              onChanged: (val) {
                isSwitchOn = val;
                setState(() {});
              },
            ),
          ),
          Booster.verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SettingWidget(
              onTap: () {},
              label: 'With a Driver',
              showSwitch: true,
              isSwitchOn: isSwitchOn,
              onChanged: (val) {
                isSwitchOn = val;
                setState(() {});
              },
            ),
          ),
          Booster.verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SettingWidget(
              onTap: () {},
              label: 'Without a Driver',
              showSwitch: true,
              isSwitchOn: isSwitchOn,
              onChanged: (val) {
                isSwitchOn = val;
                setState(() {});
              },
            ),
          ),
          Booster.verticalSpace(30),
          Booster.dynamicFontSize(
              label: 'Set the Pricing Rates for your vehicle with driver',
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              lineHeight: 1.2),
          Booster.verticalSpace(35),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Booster.dynamicFontSize(
                      label: 'Set Hourly Rate',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      lineHeight: 1.2),
                ),
                Expanded(child: AuthTextFieldColor(label: '0', color: Colors.transparent))
              ],
            ),
          ),
          Booster.verticalSpace(170),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppButton(
                onTap: ()=> widget.onTap(),
                text: 'Continue',color: Color(0xffF51C17),),
          )
        ]),
      )),
    );
  }
}
