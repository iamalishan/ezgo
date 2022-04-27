import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthTextFieldLightColor extends StatelessWidget {
  final String label;

  AuthTextFieldLightColor({@required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 14
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            hintText: label,
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            hintStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 14),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffED1C24), width: 1.5),
                borderRadius: BorderRadius.circular(15)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE4E9F2), width: 1.5),
                borderRadius: BorderRadius.circular(15)),
          ),
        ));
  }
}
