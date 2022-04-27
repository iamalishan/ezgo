import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class AppButtonGrey extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  AppButtonGrey({@required this.onTap, @required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Booster.screenWidth(context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(255, 174, 178, 182)),
        child: Booster.paddedWidget(
            top: 17,
            bottom: 15,
            child: Booster.dynamicFontSize(
                label: text,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
      ),
    );
  }
}
