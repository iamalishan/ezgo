import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/views/filter_search.dart';
import 'package:flutter/material.dart';

class FindonMapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Booster.screenHeight(context),
          width: Booster.screenWidth(context),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/8.png'))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Booster.verticalSpace(15),
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
                Spacer(),
                Container(
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xff707070),
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Booster.dynamicFontSize(
                                label: 'Mon, 27 Sep',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            Booster.verticalSpace(5),
                            Booster.dynamicFontSize(
                                label: '01:00 AM',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Booster.dynamicFontSize(
                                label: 'Mon, 27 Sep',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                            Booster.verticalSpace(5),
                            Booster.dynamicFontSize(
                                label: '01:00 AM',
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ],
                        ),
                        Container(
                          color: Color(0x4D707070),
                          width: 1,
                        ),
                        InkWell(
                          onTap: (){
                            showModalBottomSheet<void>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10)
                                )
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return FilterSearch();
                              },
                            );
                          },
                            child: Image.asset('assets/images/filter.png',height: 25.5,width: 25.5,)),
                      ],
                    )
                  ),
                ),
                Booster.verticalSpace(30),
              ],
            ),
          ),
        ),
      )
    );
  }
}
