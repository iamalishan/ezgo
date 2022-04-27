import 'package:flutter/material.dart';

class AuthTextFieldColor extends StatelessWidget {
  final String label;
  final Color color;

  AuthTextFieldColor({@required this.label,@required this.color});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: color,
        hintText: label,
        hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 14),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffACB1C0), width: 1),
            borderRadius: BorderRadius.circular(4)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xffACB1C0), width: 1),
            borderRadius: BorderRadius.circular(4)
        ),
      ),
    );
  }
}
