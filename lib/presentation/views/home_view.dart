import 'dart:async';

import 'package:booster/booster.dart';
import 'package:ez_go_final/Controller/authController.dart';
import 'package:ez_go_final/presentation/elements/become_a_host_widget.dart';
import 'package:ez_go_final/presentation/elements/home_container.dart';
import 'package:ez_go_final/presentation/elements/horizontal_list_view_builder.dart';
import 'package:ez_go_final/presentation/elements/horizontal_list_view_builder_1.dart';
import 'package:ez_go_final/presentation/elements/search_file.dart';
import 'package:ez_go_final/presentation/views/search_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'become_a_host_view.dart';
import 'bottom_bar.dart';
import 'hosting_user_profile_view.dart';
import 'information_required_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _searchController = TextEditingController();

  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset('assets/images/home_bg.png'),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Booster.verticalSpace(30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {
                            Get.to(BottomNavBar(),
                                transition: Transition.cupertino);
                          },
                          child: Image.asset(
                            'assets/images/Group 444.png',
                            height: 71,
                            width: 70,
                          ),
                        ),
                      ),
                      Booster.verticalSpace(100),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Card(
                          elevation: 5,
                          color: Color(0x80FFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: SearchField(
                            ispassword: false,
                            iconSuffix: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                )),
                            controller: _searchController,
                            label: "Search for city, airport, or hotel",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Booster.verticalSpace(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  HomeContainer(
                      onTap: () {
                        authController.userId =
                            FirebaseAuth.instance.currentUser.uid ?? "";
                        if (authController.userId.isNotEmpty)
                          Get.to(BecomeAHost());
                      },
                      text: '24/7 customer support',
                      text1:
                          'Make your travel easy knowing that customer support is available 24/7 at EZ-Go for your assistance with just a single tap away.',
                      image: 'assets/images/Call Center.png'),
                  HomeContainer(
                      onTap: () {},
                      text: 'Endless options',
                      text1:
                          'Easily find the best ride for you from a collection of hundreds of models and get it delivered where you want.',
                      image: 'assets/images/Path 407.png'),
                  HomeContainer(
                      onTap: () {},
                      text: 'Drive confidently',
                      text1:
                          'Drive confidently with your choice of protection plans. All plans include varying levels of liability insurance from EZ-Go Insurance Agency.',
                      image: 'assets/images/Group 459.png'),
                  Booster.verticalSpace(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Booster.dynamicFontSize(
                            label: 'Cars from local hosts',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2F2F2F)),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Booster.verticalSpace(20),
            GridViewWidget(),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Browse by Destination',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F2F2F)),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.black,
                    size: 20,
                  ),
                ],
              ),
            ),
            Booster.verticalSpace(20),
            GridViewWidget1(),
            Booster.verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
