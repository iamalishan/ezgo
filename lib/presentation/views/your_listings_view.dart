import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:flutter/material.dart';

class YourListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Booster.verticalSpace(12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Your Listings',
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.black,
                    size: 25,
                  ),
                ],
              ),
            ),
            Booster.verticalSpace(10),
            Divider(
              color: Color(0xff707070),
            ),
            Booster.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  YourListingContainer(
                    onTap: () {},
                    text1: 'Perodua myvi 1.3 2018',
                    text2: '4.9',
                    text3: '(85 Trips)',
                    text4: 'MYR 116.00/day ',
                    image: 'assets/images/car_2.png',
                  ),
                  Booster.verticalSpace(30),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
