import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class AppButtonCircle extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Icon icon;

  AppButtonCircle(
      {@required this.onTap,
      @required this.text,
      @required this.color,
      @required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Booster.screenWidth(context),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircleAvatar(
                child: icon,
                backgroundColor: Colors.white,

                // width: 30,
                // height: 30,
              ),
              Booster.horizontalSpace(30),
              Booster.paddedWidget(
                  top: 17,
                  bottom: 15,
                  child: Booster.dynamicFontSize(
                      label: text,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
