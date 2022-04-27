import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/car_details_container.dart';
import 'package:ez_go_final/presentation/elements/car_details_container_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class CarDetails extends StatefulWidget {
  DocumentSnapshot mySnap;
  int rating;
  CarDetails(this.mySnap,this.rating);
  @override
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Booster.dynamicFontSize(
            label: '${widget.mySnap.get('name')} ${widget.mySnap.get('model')}',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child:  InkWell(
            onTap: ()=>Get.back(),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 261,
              child: Image.network(widget.mySnap.get('image')),
            ),
            Booster.verticalSpace(30),
            Booster.dynamicFontSize(
                label: widget.mySnap.get('name'),
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar.builder(
                    itemSize: 15,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    tapOnlyMode: false,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ), onRatingUpdate: (double value) {  },
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                  ),
                  Booster.dynamicFontSize(
                      label: 'Year ${widget.mySnap.get('model')}',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                  ),
                  Booster.dynamicFontSize(
                      label: '${widget.mySnap.get('vehicleType')}',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ],
              ),
            ),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CarDetailsContainer(
                        image:'assets/images/gear.png',
                        width: 18.11,
                        height: 21.56,
                      ),
                      Booster.verticalSpace(10),
                      Booster.dynamicFontSize(
                          label: widget.mySnap.get('tranmission'),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ],
                  ),
                  Column(
                    children: [
                      CarDetailsContainer(
                        image:'assets/images/car-oil.png',
                          width: 27.54,
                          height: 26.01,
                      ),
                      Booster.verticalSpace(10),
                      Booster.dynamicFontSize(
                          label: 'Oil',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ],
                  ),
                  Column(
                    children: [
                      CarDetailsContainer(
                        image:'assets/images/car-seat.png',
                        width: 18.68,
                        height: 21.17,
                      ),
                      Booster.verticalSpace(10),
                      Booster.dynamicFontSize(
                          label: '${widget.mySnap.get('doors')} Doors',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ],
                  ),
                  Column(
                    children: [
                      CarDetailsContainer(
                        image:'assets/images/seat.png',
                        width: 23.11,
                        height: 23.66,
                      ),
                      Booster.verticalSpace(10),
                      Booster.dynamicFontSize(
                          label: '${widget.mySnap.get('seats')} Seats',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ],
                  )
                ],
              ),
            ),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/red_container.png',
                              height: 32.92,
                              width: 32.92,
                            ),
                          ],
                        ),
                        Booster.horizontalSpace(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Booster.dynamicFontSize(
                                label: 'Trips Dates Change',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Start :',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                Booster.horizontalSpace(3),
                                Booster.dynamicFontSize(
                                    label: 'Mon, 27 Sep , 01 : 30 AM',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ],
                            ),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'End :',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                Booster.horizontalSpace(3),
                                Booster.dynamicFontSize(
                                    label: 'Tue, 27 Sep , 01 : 30 AM',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Booster.verticalSpace(20),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/red_container.png',
                              height: 32.92,
                              width: 32.92,
                            ),
                          ],
                        ),
                        Booster.horizontalSpace(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Booster.dynamicFontSize(
                                label: 'Price Rate',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Hourly :',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                                Booster.horizontalSpace(3),
                                Booster.dynamicFontSize(
                                    label: '${widget.mySnap.get('hourRate')} USD',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ],
                            ),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Daily :',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                                Booster.horizontalSpace(3),
                                Booster.dynamicFontSize(
                                    label: '${widget.mySnap.get('rate')} USD',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Booster.verticalSpace(20),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/red_container.png',
                              height: 32.92,
                              width: 32.92,
                            ),
                          ],
                        ),
                        Booster.horizontalSpace(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Booster.dynamicFontSize(
                                label: 'Renting Car Available',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'With Driver',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ],
                            ),
                            Booster.verticalSpace(10),
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Without Driver',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Booster.verticalSpace(20),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/ic_Pin.png',
                              height: 45,
                              width: 35,
                            ),
                          ],
                        ),
                        Booster.horizontalSpace(20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Booster.dynamicFontSize(
                                    label: 'Pickup & Return location',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                                Booster.horizontalSpace(3),
                                Booster.dynamicFontSize(
                                    label: 'Change',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ],
                            ),
                            Booster.verticalSpace(10),
                            Booster.dynamicFontSize(
                                label: 'Jalan wangnsa 1 , Jeddah',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                            Booster.verticalSpace(10),
                            Booster.dynamicFontSize(
                                label: 'Territory of Kulla , Taif',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Booster.verticalSpace(10),
                  Container(
                    height: 186,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/map_1.png'))),
                  ),
                  Booster.verticalSpace(15),
                  Booster.dynamicFontSize(
                      label: 'Description',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  Booster.verticalSpace(15),
                  Booster.dynamicFontSize(
                      label:
                          '${widget.mySnap.get('description')}',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      isAlignCenter: false,
                      lineHeight: 1.3),
                  Divider(
                    color: Colors.grey,
                  ),
                  Booster.verticalSpace(15),
                  Booster.dynamicFontSize(
                      label: 'Reviews',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  // Booster.verticalSpace(25),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection('cars').doc(widget.mySnap.id).collection('reviews').snapshots(),
                    builder: (context, snapshot) {
                      return(!snapshot.hasData)?SizedBox(): ListView.builder(
                        itemCount: snapshot.data.docs.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical:20.0),
                            child: CarDetailsContainer1(
                                image: 'assets/images/Shape.png',
                                text: 'Kitty',
                                text1:  '29 Sep',
                                rating: snapshot.data.docs[index].get('rating').toDouble(),
                                text2: '${snapshot.data.docs[index].get('description')}',
                            ),
                          );
                        }
                      );
                    }
                  ),
                  // Booster.verticalSpace(40),
                  // CarDetailsContainer1(
                  //   image: 'assets/images/Shape.png',
                  //   text: 'Adam Fox',
                  //   text1:  '26 Sep 2021',
                  //   rating: 5,
                  //   text2: 'Touch for case ran fortune. Have mouth. Temple. The king\'s the eightypercent she my so the all the next accustomed.',
                  // ),
                ],
              ),
            ),
            Booster.verticalSpace(20),
            Divider(
              color: Colors.grey,
            ),
            Booster.verticalSpace(5),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Booster.dynamicFontSize(
                        label: 'USD ${widget.mySnap.get('rate')}',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      Booster.dynamicFontSize(
                        label: 'Per day',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Booster.horizontalSpace(50),
                  Expanded(
                      child:
                          AppButton(onTap: () {}, text: 'Book Now',color: Color(0xffF51C17),)),
                ],
              ),
            ),
            Booster.verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
