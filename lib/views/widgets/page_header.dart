import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customTextStyle.dart';

class PageHeader extends StatelessWidget {
  PageHeader(
      {Key? key, this.prefixWidget, required this.text, this.suffixWidget})
      : super(key: key);

  Widget? prefixWidget;
  String text;
  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      alignment: Alignment.center,
      width: 250,
      height: 150,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(36)),
          boxShadow: [
            BoxShadow(
                color: Color(0x0d000000),
                offset: Offset(0, 5),
                blurRadius: 30,
                spreadRadius: 0)
          ],
          color: Color(0xffffffff)),
      child: // Settings
          Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefixWidget ?? Container(),
          Text(text,
              style: CustomTextStyle.greyHeaderStyle,
              textAlign: TextAlign.center),
          suffixWidget ?? Container(),
        ],
      ),
    );
  }
}
