import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class HostingUserProfileContainer extends StatelessWidget {
  final String text;
  final String image;
  final VoidCallback onTap;

  HostingUserProfileContainer({@required this.onTap, @required this.text,@required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
              ),
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
        Divider(
          color: Color(0x4A707070),
          thickness: 1,
        ),
      ],
    );
  }
}
