import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_picker/country_picker.dart';
import 'package:ez_go_final/presentation/elements/step_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart' as cp;

import '../elements/app_button.dart';

class PhoneNumber extends StatefulWidget {
  final VoidCallback onTap;

  PhoneNumber(this.onTap);
  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  // Country selectedCountry=null;
  cp.Country selectedCountry = null;
  TextEditingController phoneController = TextEditingController();
  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Booster.verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Booster.dynamicFontSize(
                label:
                    'Enter your mobile number and we\'ll text you a verification code',
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                lineHeight: 1.3),
          ),
          Booster.verticalSpace(13),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    showCountryPicker(
                        context: context,
                        onSelect: (Country c) {
                          // selectedCountry=c;
                          print(c.displayName);
                          print(c.name);
                          print(c.phoneCode);
                          selectedCountry = c;
                          setState(() {});
                          // print(c.phoneCode);
                        });
                  },
                  child: Container(
                    height: 59,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Color(0xff707070),
                          width: 1,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          selectedCountry == null
                              ? SizedBox()
                              : Row(
                                  children: [
                                    // Image.asset(
                                    //   'assets/images/canada.png',
                                    //   height: 31,
                                    //   width: 46.5,
                                    // ),
                                    Booster.horizontalSpace(10),
                                    Booster.dynamicFontSize(
                                      label:
                                          "${selectedCountry.name} (${selectedCountry.countryCode})", //'Pakistan(PK)',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Booster.verticalSpace(20),
                Container(
                  height: 59,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: Color(0xff707070),
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              prefix: Text(selectedCountry == null
                                  ? ""
                                  : selectedCountry.phoneCode + " ")),
                          controller: phoneController,
                        ))
                        // Center(
                        //   child: Booster.dynamicFontSize(
                        //       label: 'i.e.034012312 534',
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w600,
                        //       color: Colors.black),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Booster.verticalSpace(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AppButton(
              onTap: () {
                submitted
                    ? widget.onTap()
                    : uploadnumber(
                        "+${selectedCountry.phoneCode + phoneController.text}");
              },
              text: 'Next',
              color: Color(0xffF51C17),
            ),
          ),
        ],
      ),
    ));
  }

  Future<void> uploadnumber(String phone) async {
    print('upload called');

    await FirebaseFirestore.instance
        .collection('user')
        .doc(FirebaseAuth.instance.currentUser.uid)
        .set({'number': phone}, SetOptions(merge: true)).then((value) {
      setState(() {
        submitted = true;
      });

      widget.onTap();
    });
    //  updateUserData['image']=value;
  }
}
