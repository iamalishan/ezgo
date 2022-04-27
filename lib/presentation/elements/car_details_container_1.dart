import 'package:booster/booster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CarDetailsContainer1 extends StatelessWidget {
  final String image;
  final String text;
  final String text1;
  final double rating;
  final String text2;


  CarDetailsContainer1({@required this.image, @required this.text,@required this.text1,@required this.rating,@required this.text2,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image,
                  height: 46.84,
                  width: 46.84,
                ),
                Booster.horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Booster.dynamicFontSize(
                        label: text,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    Booster.verticalSpace(5),
                    Booster.dynamicFontSize(
                        label: text1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ],
                ),
              ],
            ),
            RatingBar.builder(
              itemSize: 15,
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              tapOnlyMode: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
          ],
        ),
        Booster.verticalSpace(10),
        Booster.dynamicFontSize(
            label: text2,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            isAlignCenter: false,
            lineHeight: 1.3),
      ],
    );
  }
}
