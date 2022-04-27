import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/views/your_listings_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_button.dart';

class CarApprovalContainer extends StatelessWidget {
  final VoidCallback onTap;

  CarApprovalContainer({
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Color(0x4D707070),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Color(0x6B313131),
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Evan Guzman',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  Booster.dynamicFontSize(
                      label: 'DL - 3X565JKL',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ],
              ),
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Profile Photo',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  Booster.dynamicFontSize(
                      label: 'Verified',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff02D52B)),
                ],
              ),
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Phone Number',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  Booster.dynamicFontSize(
                      label: 'Verified',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff02D52B)),
                ],
              ),
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Vehicle Info & Documents',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  Booster.dynamicFontSize(
                      label: 'Verified',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff02D52B)),
                ],
              ),
              Booster.verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Booster.dynamicFontSize(
                      label: 'Driver Licence',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                  Booster.dynamicFontSize(
                      label: 'Valid',
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff02D52B)),
                ],
              ),
              Booster.verticalSpace(20),
              Row(
                children: [
                  Expanded(
                    child: AppButton(onTap: () {}, text: 'Reject',color: Color(0xffF51C17),),
                  ),
                  Booster.horizontalSpace(30),
                  Expanded(
                    child: AppButton(
                        onTap: () {
                          Get.to(YourListing(),
                              transition: Transition.cupertino);
                        },
                        text: 'Accept',color: Color(0xff02D52B),),
                  )
                ],
              ),
              Booster.verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}
