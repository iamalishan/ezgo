import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/car_approval_widget.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:flutter/material.dart';

class CarApproval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Booster.dynamicFontSize(
            label: 'Approve Users by Admin',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff262626),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffF1F2F4),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Booster.verticalSpace(30),
                  CarApprovalContainer(),
                  Booster.verticalSpace(15),
                  CarApprovalContainer(),
                  Booster.verticalSpace(15),
                  CarApprovalContainer(),
                  Booster.verticalSpace(15),
                  CarApprovalContainer(),
                  Booster.verticalSpace(15),
                  CarApprovalContainer(),
                  Booster.verticalSpace(15),
                  CarApprovalContainer(),
                ]
              ),
            ),
          )),
    );
  }
}
