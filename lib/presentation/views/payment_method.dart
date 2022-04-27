import 'package:booster/booster.dart';
import 'package:ez_go_final/presentation/elements/app_button.dart';
import 'package:ez_go_final/presentation/views/add_credit_card_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool isMasterTap = true;
  bool isVisaTap = false;
  bool isPayPal = false;
  bool isCash = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Booster.dynamicFontSize(
              label: 'Payment Method',
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Booster.verticalSpace(30),
              InkWell(
                onTap: () {
                  isMasterTap = true;
                  isVisaTap = false;
                  isPayPal = false;
                  isCash = false;
                  setState(() {});
                },
                child: Container(
                    height: 82,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: isMasterTap
                                ? Color(0xffED1C24)
                                : Color(0x99E4E9F2),
                            width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/atm_1.png',
                                width: 53,
                                height: 34,
                              ),
                              Booster.horizontalSpace(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Booster.verticalSpace(23),
                                  Booster.dynamicFontSize(
                                      label: '**** **** **** 5967',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                  Booster.verticalSpace(3),
                                  Booster.dynamicFontSize(
                                      label: 'Expires 09/25',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffACB1C0)),
                                ],
                              ),
                            ],
                          ),
                          if (isMasterTap)
                            Image.asset(
                              'assets/images/check_red.png',
                              height: 24,
                              width: 24,
                            ),
                        ],
                      ),
                    )),
              ),
              Booster.verticalSpace(15),
              InkWell(
                onTap: () {
                  isMasterTap = false;
                  isVisaTap = true;
                  isPayPal = false;
                  isCash = false;
                  setState(() {});
                },
                child: Container(
                    height: 82,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: isVisaTap
                                ? Color(0xffED1C24)
                                : Color(0x99E4E9F2),
                            width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/atm_2.png',
                                width: 45,
                                height: 12,
                              ),
                              Booster.horizontalSpace(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Booster.verticalSpace(23),
                                  Booster.dynamicFontSize(
                                      label: '**** **** **** 7539',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black),
                                  Booster.verticalSpace(3),
                                  Booster.dynamicFontSize(
                                      label: 'Expires 10/27',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffACB1C0)),
                                ],
                              ),
                            ],
                          ),
                          if (isVisaTap)
                            Image.asset(
                              'assets/images/check_red.png',
                              height: 24,
                              width: 24,
                            ),
                        ],
                      ),
                    )),
              ),
              Booster.verticalSpace(15),
              InkWell(
                  onTap: () {
                    isMasterTap = false;
                    isVisaTap = false;
                    isPayPal = true;
                    isCash = false;
                    setState(() {});
                  },
                  child: Container(
                    height: 82,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: isPayPal
                                ? Color(0xffED1C24)
                                : Color(0x99E4E9F2),
                            width: 1)),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/atm_3.png',
                              width: 29,
                              height: 34,
                            ),
                            Booster.horizontalSpace(35),
                            Booster.dynamicFontSize(
                                label: 'hosam423@gmail.com',
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ],
                        ),
                        if (isPayPal)
                          Image.asset(
                            'assets/images/check_red.png',
                            height: 24,
                            width: 24,
                          ),
                      ],
                    ),
                  )),
              Booster.verticalSpace(15),
              InkWell(
                onTap: () {
                  isMasterTap = false;
                  isVisaTap = false;
                  isPayPal = false;
                  isCash = true;
                  setState(() {});
                },
                child: Container(
                    height: 82,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color:
                                isCash ? Color(0xffED1C24) : Color(0x99E4E9F2),
                            width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [

                            Image.asset(
                              'assets/images/atm_3.png',
                              width: 29,
                              height: 34,
                            ),
                            Booster.horizontalSpace(35),
                            Booster.dynamicFontSize(
                                label: 'Cash',
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.black),
                          ],),
                          if (isCash)
                            Image.asset(
                              'assets/images/check_red.png',
                              height: 24,
                              width: 24,
                            ),
                        ],
                      ),
                    )),
              ),
              Booster.verticalSpace(100),
              AppButton(
                  onTap: () {
                    Get.to(AddCreditCard(), transition: Transition.cupertino);
                  },
                  text: 'Done',color: Color(0xffF51C17),)
            ],
          ),
        ),
      ),
    );
  }
}
