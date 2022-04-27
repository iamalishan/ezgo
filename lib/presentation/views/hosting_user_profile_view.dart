import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/hosting_user_profile_widget.dart';
import 'package:ez_go_final/presentation/views/about_us_view.dart';
import 'package:ez_go_final/presentation/views/car_details.dart';
import 'package:ez_go_final/presentation/views/faqs_view.dart';
import 'package:ez_go_final/presentation/views/payment_method.dart';
import 'package:ez_go_final/presentation/views/profile_photo_view.dart';
import 'package:ez_go_final/presentation/views/renting_user_profile_view.dart';
import 'package:ez_go_final/presentation/views/signup_login_view.dart';
import 'package:ez_go_final/presentation/views/tabbar.dart';
import 'package:ez_go_final/presentation/views/tabbar_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HostingUserProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Booster.verticalSpace(30),
              Row(
                children: [
                  Container(
                    height: 82,
                    width: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Color(0xff707070),
                        width: 1
                      ),
                    ),
                  ),
                  Booster.horizontalSpace(20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Booster.dynamicFontSize(
                        label: 'Hosam',
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),
                      Booster.verticalSpace(13),
                      Booster.dynamicFontSize(
                        label: 'Show Profile',
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,),
                    ],
                  ),
                ],
              ),
              Booster.verticalSpace(40),
              HostingUserProfileContainer(
                  onTap: () {
                    Get.to(BlackTabBarView(),
                        transition: Transition.cupertino);
                  },
                  text: 'Notifications',
                  image: 'assets/images/bell_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                    Get.to(ProfilePhoto((){}),
                        transition: Transition.cupertino);
                  },
                  text: 'View and edit profile',
                  image: 'assets/images/person_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                      Get.to(PaymentMethod(),
                          transition: Transition.cupertino);
                  },
                  text: 'Payments',
                  image: 'assets/images/payments_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                    // Get.to(CarDetails(),
                    //     transition: Transition.cupertino);
                  },
                  text: 'View reviews',
                  image: 'assets/images/reviews_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                      Get.to(RentingUserProfile(),
                          transition: Transition.cupertino);
                  },
                  text: 'Switch to renting',
                  image: 'assets/images/renting_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                      Get.to(FAQS(),
                          transition: Transition.cupertino);
                  },
                  text: 'FAQs',
                  image: 'assets/images/faqs_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                      Get.to(AboutUs(),
                          transition: Transition.cupertino);
                    },
                  text: 'About us',
                  image: 'assets/images/aboutus_icon.png'),
              HostingUserProfileContainer(
                  onTap: () {
                    Get.to(BlackTabBarViewThird(),
                        transition: Transition.cupertino);
                  },
                  text: 'Logout',
                  image: 'assets/images/logout_icon.png'),
            ],
          ),
        ),
      ),
    );
  }
}
