import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;

  AuthTextField({@required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
    color: Color(0xff8F9BB3)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF0F0F0),
        hintText: label,
        hintStyle: TextStyle(
            color: Color(0xff8F9BB3),
            fontWeight: FontWeight.w400,
            fontSize: 14),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffE4E9F2), width: 1),
            borderRadius: BorderRadius.circular(12)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Color(0xffE4E9F2), width: 1),
            borderRadius: BorderRadius.circular(12)
        ),
      ),
      maxLines: 3,
    );
  }
}
