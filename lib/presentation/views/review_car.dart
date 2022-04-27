import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewCar extends StatefulWidget {
  @override
  _ReviewCarState createState() => _ReviewCarState();
}

class _ReviewCarState extends State<ReviewCar> {
  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/images/map.png'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Booster.verticalSpace(10),
              Container(
                height: 52.87,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Booster.dynamicFontSize(
                          label: 'Jeddah',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          Image.asset(
                            'assets/images/location.png',
                            height: 32,
                            width: 32,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Booster.verticalSpace(10),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffF7F9FC),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xff707070),
                      width: 1,
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Booster.verticalSpace(15),
                      AppBar(
                        title: Booster.dynamicFontSize(
                            label: 'Awesome!',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff2F2F2F)),
                        centerTitle: true,
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      Booster.verticalSpace(5),
                      Booster.dynamicFontSize(
                          label: 'You rated Evan  4 stars',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff9D9D9D)),
                      Booster.verticalSpace(10),
                      RatingBar.builder(
                        onRatingUpdate: null,
                        itemSize: 35,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        tapOnlyMode: false,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),
                      Booster.verticalSpace(15),
                      AuthTextField(label: 'Say something about Evan service?'),
                      Booster.verticalSpace(20),
                      Booster.dynamicFontSize(
                          label: 'Add a trip for Evan',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      Booster.verticalSpace(23),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffE4E9F2), width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'US\$1',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff222B45)),
                                ],
                              ),
                            ),
                          ),
                          Booster.horizontalSpace(10),
                          Expanded(
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffE4E9F2), width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'US\$1',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff222B45)),
                                ],
                              ),
                            ),
                          ),
                          Booster.horizontalSpace(10),
                          Expanded(
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffF51C17), width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'US\$1',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffF51C17)),
                                ],
                              ),
                            ),
                          ),
                          Booster.horizontalSpace(10),
                          Expanded(
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffE4E9F2), width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'US\$1',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff222B45)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Booster.verticalSpace(23),
                      AppButton(
                        onTap: () {},
                        text: 'Submit',
                        color: Colors.black,
                      ),
                      Booster.verticalSpace(23),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
