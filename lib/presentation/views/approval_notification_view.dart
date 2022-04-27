import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/elements/app_button_transparent.dart';
import 'package:ez_go_final/presentation/elements/search_elements.dart';
import 'package:ez_go_final/presentation/elements/your_listings_container.dart';
import 'package:flutter/material.dart';

class ApprovalNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title:Booster.dynamicFontSize(
            label: 'Get approved to rent',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.close,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  thickness: 1.5,
                ),
                Booster.verticalSpace(100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 341,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffF51C17),
                        border: Border.all(
                          color: Color(0x9C707070),
                          width: 1.5,
                        )),
                    child: Column(
                      children: [
                        Booster.verticalSpace(50),
                        Image.asset('assets/images/logo_1.png',height: 113.5,width: 118,),
                        Booster.verticalSpace(15),
                        Booster.dynamicFontSize(
                            label: 'EZ-GO team Checking your\ndocuments manually we will\nlet you know when your profile\napproved',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        lineHeight: 1.2),
                      ],
                    ),
                  ),
                ),
                Booster.verticalSpace(30),
              ]
            ),
          )),
    );
  }
}
