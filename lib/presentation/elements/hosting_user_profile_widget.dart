import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class HostingUserProfileContainer extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onTap;

  HostingUserProfileContainer({@required this.onTap, @required this.text,@required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>onTap(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 33.75,
                    width: 33.75,
                    decoration: BoxDecoration(
                        color: Color(0xffFF5D5D),
                        borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(child: Image.asset(image,height: 24,width: 24,)),

                  ),
                  Booster.horizontalSpace(20),
                  Booster.dynamicFontSize(
                    label:text,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.black,
                size: 18,
              ),
            ],
          ),
          Divider(
            color: Color(0x4A707070),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
