import 'package:booster/booster.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/views/car_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'find_on_map.dart';

class Search extends StatelessWidget {
  String locationKey;
  Search(this.locationKey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Booster.verticalSpace(20),
              InkWell(
                onTap: () {
                  Get.to(FindonMapp(), transition: Transition.cupertino);
                },
                child: Container(
                  height: 52.87,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                      border: Border.all(
                        color: Color(0x96707070),
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Booster.dynamicFontSize(
                            label: locationKey,
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
              ),
              Booster.verticalSpace(10),
              SingleChildScrollView(
                child: Column(
                  children: [
                    StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance.collection('cars').where('isApproved').snapshots(),
                      builder: (context, snapshot) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context,index){
                        
                            return SearchContainer(
                              onTap: () {
                                Get.to(CarDetails(snapshot.data.docs[index],4), transition: Transition.cupertino);
                              },
                              text1: snapshot.data.docs[index].get('name'),
                              id: snapshot.data.docs[index].id,
                              text3: '(${snapshot.data.docs[index].get('trips')} Trips)',
                              text4: 'MYR ${snapshot.data.docs[index].get('rate')}/day ',
                              image: snapshot.data.docs[index].get('image'),
                            );
                          }
                        );
                      }
                    ),
                    // SearchContainer(
                    //   onTap: () {},
                    //   text1: 'Perodua myvi 1.3 2018',
                    //   text2: '4.9',
                    //   text3: '(85 Trips)',
                    //   text4: 'MYR 116.00/day ',
                    //   image: 'assets/images/car_1.png',
                    // ),
                    // SearchContainer(
                    //   onTap: () {},
                    //   text1: 'Perodua myvi 1.3 2018',
                    //   text2: '4.9',
                    //   text3: '(85 Trips)',
                    //   text4: 'MYR 116.00/day ',
                    //   image: 'assets/images/car_2.png',
                    // ),
                    // SearchContainer(
                    //   onTap: () {},
                    //   text1: 'Perodua myvi 1.3 2018',
                    //   text2: '4.9',
                    //   text3: '(85 Trips)',
                    //   text4: 'MYR 116.00/day ',
                    //   image: 'assets/images/car_1.png',
                    // ),
                    // SearchContainer(
                    //   onTap: () {},
                    //   text1: 'Perodua myvi 1.3 2018',
                    //   text2: '4.9',
                    //   text3: '(85 Trips)',
                    //   text4: 'MYR 116.00/day ',
                    //   image: 'assets/images/car_2.png',
                    // ),
                    Booster.verticalSpace(30),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
