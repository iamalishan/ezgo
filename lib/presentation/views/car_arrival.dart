import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CarArrival extends StatefulWidget {
  @override
  _CarArrivalState createState() => _CarArrivalState();
}

class _CarArrivalState extends State<CarArrival> {
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
                            label: 'Car Arrived',
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
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/dp.png',height: 51,width: 51,),
                                Booster.horizontalSpace(15),
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
                                          ), onRatingUpdate: (double value) {  },
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Arrive time',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff9D9D9D)),
                                Booster.verticalSpace(10),
                                Booster.dynamicFontSize(
                                    label: '12:03 PM',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Booster.verticalSpace(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 13.52,
                                width: 13.52,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              Booster.horizontalSpace(20),
                              Booster.dynamicFontSize(
                                  label: '874 Hildegard Crossing',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ],
                          ),
                          Booster.dynamicFontSize(
                              label: '7:15 PM',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffACB1C0)),
                        ],
                      ),
                      Booster.verticalSpace(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 13.52,
                                width: 13.52,
                                color: Color(0xff192038),
                              ),
                              Booster.horizontalSpace(20),
                              Booster.dynamicFontSize(
                                  label: 'Arrive time',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ],
                          ),
                          Booster.dynamicFontSize(
                              label: '9:30 PM',
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffACB1C0)),
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
