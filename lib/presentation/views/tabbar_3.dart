import 'package:ez_go_final/presentation/views/location.dart';
import 'package:ez_go_final/presentation/views/pricing_rate_view.dart';
import 'package:ez_go_final/presentation/views/vehicle_information_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlackTabBarViewThird extends StatefulWidget {
  @override
  _BlackTabBarViewThirdState createState() => _BlackTabBarViewThirdState();
}

class _BlackTabBarViewThirdState extends State<BlackTabBarViewThird> {
  var index = 0;
  PageController _pageController = PageController();

  String getText(){
    if(index == 0){
      return 'Vehicle Information';
    }else if(index == 1){
      return 'Location';
    }else if(index == 2){
      return 'Pricing Rates';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getText(),style: TextStyle(fontSize: 17),),
        centerTitle: true,
        leading:  InkWell(
          onTap: ()=>Get.back(),
          child: Container(
            height: 1,width: 1,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child:  InkWell(
                onTap: ()=>Get.back(),child: Icon(Icons.clear)),
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
                      color:index ==0? Color(0xffFF6663):Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color:index == 1? Color(0xffFF6663):Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Container(
                      height: 7,
                      color:index == 2? Color(0xffFF6663):Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
              child: PageView(
                controller: _pageController,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (val) {
                  index = val;
                  setState(() {});
                },
                children: [
                  VehicleInformation(   (){
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 900),
                        curve: Curves.easeIn);
                  }),
                  Location(   (){
                    _pageController.animateToPage(2,
                        duration: Duration(milliseconds: 900),
                        curve: Curves.easeIn);
                  }),
                  PricingRate( (){
                    // _pageController.animateToPage(2,
                    //     duration: Duration(milliseconds: 500),
                    //     curve: Curves.easeIn);
                  }),
                ],
              ))
        ],
      ),
    );
  }
}
