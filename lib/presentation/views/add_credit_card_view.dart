import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field_light_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCreditCard extends StatefulWidget {
  @override
  _AddCreditCardState createState() => _AddCreditCardState();
}

class _AddCreditCardState extends State<AddCreditCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Booster.dynamicFontSize(
              label: 'Add Credit Card',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Booster.verticalSpace(20),
              Booster.dynamicFontSize(
                  label: 'Name',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              Booster.verticalSpace(10),
              AuthTextFieldLightColor(label: 'label'),
              Booster.verticalSpace(20),
              Booster.dynamicFontSize(
                  label: 'Credit card number',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              Booster.verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: AuthTextFieldLightColor(
                          label: '****_****_****_6578')),
                  Booster.horizontalSpace(20),
                  Image.asset(
                    'assets/images/button.png',
                    height: 48,
                    width: 48,
                  ),
                ],
              ),
              Booster.verticalSpace(20),
              Row(
                children: [
                  Booster.dynamicFontSize(
                      label: 'Expires',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  Expanded(
                    child: Booster.dynamicFontSize(
                        label: 'CVV',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              Booster.verticalSpace(20),
              Row(
                children: [
                  Expanded(child: AuthTextFieldLightColor(label: '10/07/2030')),
                  Booster.horizontalSpace(10),
                  Expanded(child: AuthTextFieldLightColor(label: '****')),
                ],
              ),
              Booster.verticalSpace(250),
              Booster.dynamicFontSize(
                  label: 'Debit cards are accepted at some locations',
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/Bitmap.png',
                    width: 45,
                    height: 28.13,
                  ),
                  Image.asset(
                    'assets/images/Bitmap_1.png',
                    width: 45,
                    height: 28.13,
                  ),
                  Image.asset(
                    'assets/images/Bitmap_2.png',
                    width: 45,
                    height: 28.13,
                  ),
                  Image.asset(
                    'assets/images/Bitmap_3.png',
                    width: 45,
                    height: 28.13,
                  ),
                  Image.asset(
                    'assets/images/Bitmap_4.png',
                    width: 45,
                    height: 28.13,
                  ),
                  Image.asset(
                    'assets/images/Bitmap_5.png',
                    width: 45,
                    height: 28.13,
                  ),
                ],
              ),
              Booster.verticalSpace(35),
              AppButton(
                  onTap: () {
                  },
                  text: 'Done',color: Color(0xffF51C17),)
            ],
          ),
        ),
      ),
    );
  }
}
