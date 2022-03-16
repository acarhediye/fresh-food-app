import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customColors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.prefixIcon, this.hintText, this.onChanged, Key? key})
      : super(key: key);

  Icon? prefixIcon;
  String? hintText;
  Function? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: CustomColor.inputBackColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        onChanged: (text) {
          onChanged!(text);
        },
        decoration: InputDecoration(
            focusColor: CustomColor.green,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            hintText: hintText,
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
      ),
    );
  }
}
