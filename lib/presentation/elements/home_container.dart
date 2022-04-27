import 'package:booster/booster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String text;
  final String text1;
  final String image;
  final VoidCallback onTap;

  HomeContainer({@required this.onTap, @required this.text,@required this.text1,@required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onTap(),
      child: Card(
        elevation: 4,
        shadowColor: Color(0x4D707070),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 143.81,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Color(0x36707070),
                width: 1,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 17),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 38.23,
                        width: 38.23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xffE71B24),
                        ),
                        child: Center(child: Image.asset(image,width: 23.67,height: 24.58,)),
                      )
                    ],
                  ),
                ),
                Booster.horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Booster.dynamicFontSize(
                          label: text,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2F2F2F),
                          isAlignCenter: false,
                          lineHeight: 1.3),
                    ),
                    Booster.verticalSpace(10),
                    Container(
                      width: MediaQuery.of(context).size.width*0.65,
                      child: Booster.dynamicFontSize(
                          label: text1,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff2F2F2F),
                          isAlignCenter: false,
                          lineHeight: 1.3),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
