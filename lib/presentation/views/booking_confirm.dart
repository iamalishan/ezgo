import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookingConfirm extends StatefulWidget {
  @override
  _BookingConfirmState createState() => _BookingConfirmState();
}

class _BookingConfirmState extends State<BookingConfirm> {
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Booster.dynamicFontSize(
                              label: 'Your Car is coming in 2:35',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2F2F2F)),
                          Booster.dynamicFontSize(
                              label: 'Cancel Car',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff9D9D9D)),
                        ],
                      ),
                      Booster.verticalSpace(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/dp.png',height: 51,width: 51,),
                              Booster.horizontalSpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'Evan Guzman',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                  Booster.verticalSpace(5),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        itemSize: 15,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        tapOnlyMode: false,
                                        itemCount: 1,
                                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      Booster.horizontalSpace(5),
                                      Booster.dynamicFontSize(
                                          label: '4.8',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ],
                                  ),
                                  Booster.verticalSpace(5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Color(0xffC5CEE0),
                                        size: 15,
                                      ),
                                      Booster.horizontalSpace(5),
                                      Booster.dynamicFontSize(
                                          label: '3 mins',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/car_3.png',width: 78,height: 40,),
                              Booster.verticalSpace(8),
                              Row(
                                children: [
                                  Booster.dynamicFontSize(
                                      label: 'Toyota Vios - ',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffACB1C0)),
                                  Booster.dynamicFontSize(
                                      label: '8CF4829',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Booster.verticalSpace(40),
                      Row(
                        children: [
                          Expanded(child: AppButton(onTap: () {}, text: 'Message',color: Color(0xffF51C17),)),
                          Booster.horizontalSpace(10),
                          Expanded(child: AppButton(onTap: () {}, text: 'Call',color: Color(0xff02D52B),)),
                        ],
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
