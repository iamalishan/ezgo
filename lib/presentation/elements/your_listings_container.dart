import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class YourListingContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image;
  final VoidCallback onTap;

  YourListingContainer(
      {@required this.onTap,
      @required this.text1,
      @required this.text2,
      @required this.text3,
      @required this.text4,
      @required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shadowColor: Color(0x4D707070),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0x96707070),
              width: 1,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
                height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                )
              ),
                child: Image.asset(
              image,
              fit: BoxFit.fill,
            )),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Booster.dynamicFontSize(
                  label: text1,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            Booster.verticalSpace(13),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Booster.dynamicFontSize(
                      label: text2,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  Booster.horizontalSpace(5),
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    size: 18,
                  ),
                  Booster.horizontalSpace(5),
                  Booster.dynamicFontSize(
                      label: text3,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ],
              ),
            ),
            Booster.verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Booster.dynamicFontSize(
                      label: text4,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      letterSpacing: 0),
                ],
              ),
            ),
            Booster.verticalSpace(25),
          ],
        ),
      ),
    );
  }
}
