import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class GetApprovedToHostContainer extends StatelessWidget {
  final String text;
  final String text1;
  final String image;
  final VoidCallback onTap;

  GetApprovedToHostContainer({@required this.onTap, @required this.text,@required this.text1,@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 37,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Color(0xff707070), width: 1)),
                child: Center(
                    child: Image.asset(image,
                      height: 17.75,
                      width: 26.73,
                    )),
              ),
            ],
          ),
          Booster.horizontalSpace(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Booster.dynamicFontSize(
                  label: text,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              Booster.verticalSpace(8),
              Container(
                width:MediaQuery.of(context).size.width*0.7,
                child: Booster.dynamicFontSize(
                    label: text1,
                    fontSize: 13.5,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    isAlignCenter: false,
                    lineHeight: 1.35),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
