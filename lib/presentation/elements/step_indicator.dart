import 'package:booster/booster.dart';
import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  StepIndicator({@required this.color1, @required this.color2, @required this.color3, @required this.color4});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 20,
      color: Colors.black,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:2.0),
              child: Container(
                height: 7,
                color: color1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                height: 7,
                color: color2,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                height: 7,
                color: color3,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Container(
                height: 7,
                color: color4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
