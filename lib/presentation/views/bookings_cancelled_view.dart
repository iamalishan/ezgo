import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:flutter/material.dart';

class BookingsCanceled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Booster.dynamicFontSize(
                label: 'No Cancelled Bookings',
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            Booster.verticalSpace(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Booster.dynamicFontSize(
                  label:
                      'Improve your vehicle photo\nor change your vehicle Setting\n to get more booking',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  lineHeight: 1.3),
            ),
            Booster.verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
