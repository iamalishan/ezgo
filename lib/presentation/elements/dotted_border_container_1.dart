import 'package:booster/booster.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DottedBorderContainer1 extends StatelessWidget {
  final String text;
  final String image;

  DottedBorderContainer1({@required this.text,@required this.image});

  @override
  Widget build(BuildContext context) {
    return  DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      dashPattern: [6, 5,],
      color: Color(0xffFF5D5D),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          height: 152,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Booster.verticalSpace(50),
              Image.asset(image,
                height: 40.38,
                width: 48.47,
              ),
              Booster.verticalSpace(30),
              Booster.dynamicFontSize(
                label: 'label',
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
