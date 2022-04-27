import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class AppButtonTransparent extends StatelessWidget {
  final String text;
  final VoidCallback onTap;


  AppButtonTransparent({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return InkWell(
          onTap: onTap,
          child: Container(
                width: Booster.screenWidth(context),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                 color: Colors.transparent,
                    border: Border.all(
                      color: Color(0xffFF5D5D),
                      width: 2,
                    )
                ),
                child: Booster.paddedWidget(
                    top: 17,
                    bottom: 15,
                    child: Booster.dynamicFontSize(
                        label: text,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFF5D5D))),
              ),
        );
      }
    );
  }
}
