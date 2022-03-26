import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customColors.dart';
import 'package:fresh_food/customStyle/customTextStyle.dart';
import 'package:get/get.dart';
import 'package:fresh_food/views/widgets/page_header.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

part './widgets/button.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);
  bool darkModeController = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      children: [
        PageHeader(
          text: 'settings'.tr,
        ),
        Padding(
          padding: EdgeInsets.all(40),
          child: _buttonGroup(),
        ),
      ],
    );
  }

  Widget _buttonGroup() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _Button(
          prefixIcon: Icons.person_outlined,
          text: 'your_account',
          suffixWidget: Icon(
            Icons.arrow_forward_ios_rounded,
            color: CustomColor.greyBlue,
            size: 18,
          ),
          onPressed: () {},
        ),
        _Button(
          prefixIcon: Icons.list,
          text: 'your_orders',
          suffixWidget: Icon(
            Icons.arrow_forward_ios_rounded,
            color: CustomColor.greyBlue,
            size: 18,
          ),
          onPressed: () {},
        ),
        _Button(
          prefixIcon: Icons.message_outlined,
          text: 'live_chats',
          suffixWidget: Icon(
            Icons.arrow_forward_ios_rounded,
            color: CustomColor.greyBlue,
            size: 18,
          ),
          onPressed: () {},
        ),
        _Button(
          prefixIcon: Icons.nightlight_outlined,
          text: 'dark_mode',
          suffixWidget: _suffixDarkThemeWidget(),
          onPressed: () {
            darkModeController = !darkModeController;
            print(darkModeController);
          },
        ),
        _Button(
          prefixIcon: Icons.close,
          text: 'sign_out',
          suffixWidget: Container(),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _suffixDarkThemeWidget() {
    return AnimatedContainer(
      width: 50,
      duration: const Duration(microseconds: 300),
      curve: Curves.decelerate,
      decoration: BoxDecoration(
        border: Border.all(color: CustomColor.greyBlue),
        borderRadius: BorderRadius.circular(50),
      ),
      child: AnimatedAlign(
          duration: Duration(microseconds: 300),
          alignment:
              darkModeController ? Alignment.centerRight : Alignment.centerLeft,
          curve: Curves.decelerate,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: CustomColor.greyBlue,
              borderRadius: BorderRadius.circular(99),
            ),
            child: Icon(
              darkModeController ? Icons.check : Icons.close,
              color: Colors.white,
              size: 20,
            ),
          )),
    );
  }
}
