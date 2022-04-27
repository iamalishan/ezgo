import 'package:booster/booster.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Function(bool) onChanged;
  final isSwitchOn;
  final bool showSwitch;

  SettingWidget(
      {@required this.onTap,
        @required this.label,
        this.onChanged,
        this.isSwitchOn = false,
        this.showSwitch = false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        border: Border.all(
          color: Color(0x22707070),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Booster.dynamicFontSize(
                label: label,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black),
            if (showSwitch)
              Transform.scale(
                scale: 0.8,
                child: Switch(
                    value: isSwitchOn,
                    onChanged: (val) => onChanged(val),
                    activeColor: Color(0xffFC4A4A)
                ),
              )
          ],
        ),
      )
    );
  }
}