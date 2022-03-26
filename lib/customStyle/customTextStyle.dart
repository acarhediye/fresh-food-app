import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customColors.dart';

class CustomTextStyle {
  static final TextStyle buttonTextStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontFamily: "AcuminPro",
      fontStyle: FontStyle.normal,
      fontSize: 18);

  static final TextStyle greyContentStyle = TextStyle(
      color: CustomColor.greyTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: "AcuminPro",
      fontStyle: FontStyle.normal,
      fontSize: 18);

  static final TextStyle greyBoldContentStyle = TextStyle(
      color: CustomColor.greyTextColor,
      fontWeight: FontWeight.bold,
      fontFamily: "AcuminPro",
      fontStyle: FontStyle.normal,
      fontSize: 18);

  static final TextStyle favoriesTextButtonStyle = TextStyle(
      color: CustomColor.favoriesTextButtonColor,
      fontWeight: FontWeight.w500,
      fontFamily: "AcuminPro",
      fontStyle: FontStyle.normal,
      fontSize: 10.7);
}
