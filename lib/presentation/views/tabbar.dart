import 'package:ez_go_final/presentation/views/phone_number.dart';
import 'package:ez_go_final/presentation/views/profile_photo_view.dart';
import 'package:ez_go_final/presentation/views/vehicle_documents_phots.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'driving_license_view.dart';

class BlackTabBarView extends StatefulWidget {
  @override
  _BlackTabBarViewState createState() => _BlackTabBarViewState();
}

class _BlackTabBarViewState extends State<BlackTabBarView> {
  var index = 0;
  PageController _pageController = PageController();

  String getText() {
    if (index == 0) {
      return 'Profile Photo';
    } else if (index == 1) {
      return 'Phone Number';
    } else if (index == 2) {
      return 'Vehicle & Documnets Photos';
    } else if (index == 3) {
      return 'Upload your driving license';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getText(),
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.clear),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
            height: 20,
            color: Colors.black,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color: index == 0 ? Color(0xffFF6663) : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color: index == 1 ? Color(0xffFF6663) : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color: index == 2 ? Color(0xffFF6663) : Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color: index == 3 ? Color(0xffFF6663) : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (val) {
              index = val;
              setState(() {});
            },
            children: [
              ProfilePhoto(() {
                _pageController.animateToPage(1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              }),
              PhoneNumber(() {
                _pageController.animateToPage(2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeIn);
              }),
              VehicleandDocumentsPhotos(),
              DrivingLicense()
            ],
          ))
        ],
      ),
    );
  }
}
