import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Booster.dynamicFontSize(
            label: 'EZ-GO Terms & policy',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xffF2F6F9),
      body: Column(
        children: [
          Booster.verticalSpace(10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Booster.verticalSpace(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Booster.dynamicFontSize(
                              label: 'What personal Information about Users does EZ-GO Collect ? ',
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                          isAlignCenter: false,
                          lineHeight: 1.2),
                        ),
                      ),
                      Booster.verticalSpace(15),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Booster.dynamicFontSize(
                              label: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed \ndiam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\n At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita ',
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              isAlignCenter: false,
                              lineHeight: 1.2),
                        ),
                      ),
                      Booster.verticalSpace(40),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Booster.dynamicFontSize(
                              label: 'Information You give Us ?',
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                              isAlignCenter: false,
                              lineHeight: 1.2),
                        ),
                      ),
                      Booster.verticalSpace(15),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 30),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Booster.dynamicFontSize(
                              label: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,\nno sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed \ndiam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\n At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita ',
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              isAlignCenter: false,
                              lineHeight: 1.2),
                        ),
                      ),
                      Booster.verticalSpace(30),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
