import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final IconButton iconSuffix;
  final bool ispassword;

  SearchField({
    @required this.ispassword,
    @required this.label,
    @required this.iconSuffix,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: ispassword,
      controller: controller,
      style: Theme.of(context).textTheme.caption,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: iconSuffix,
        hintText: label,
        hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff707070)),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffF0F0F0),
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffF0F0F0)),
            borderRadius: BorderRadius.circular(35.0)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffF0F0F0)),
          borderRadius: BorderRadius.circular(35.0),
        ),
      ),
    );
  }
}
