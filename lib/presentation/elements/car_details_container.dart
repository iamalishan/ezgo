import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class CarDetailsContainer extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  CarDetailsContainer({@required this.image,@required this.width,@required this.height,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF1F3F6)),
      child: Center(
          child: Image.asset(image,
            width: width,
            height: height,
          )),
    );
  }
}
