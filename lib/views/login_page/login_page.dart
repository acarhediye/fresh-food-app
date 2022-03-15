import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customColors.dart';
import 'package:fresh_food/customStyle/customTextStyle.dart';
import 'package:fresh_food/views/widgets/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: false,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color(0x0d000000),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                    spreadRadius: 0)
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          height: Get.height - 150,
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _header(),
              _loginInputs(),
              _loginButton(),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'create_account'.tr,
                  style: CustomTextStyle.greyBoldContentStyle,
                ),
              ),
              _changeLang(),
            ],
          ),
        )
      ],
    );
  }

  Widget _header() {
    return Container(
      child: Text(
        'sign_in'.tr,
        style: TextStyle(
            color: CustomColor.green,
            fontWeight: FontWeight.w400,
            fontFamily: "AcuminPro",
            fontStyle: FontStyle.normal,
            fontSize: 30.0),
      ),
    );
  }

  Widget _loginInputs() {
    return Column(
      children: [
        CustomTextField(
          prefixIcon: Icon(
            Icons.mail_outline_outlined,
            color: CustomColor.greyTextColor,
          ),
          hintText: 'email'.tr,
          onChanged: (text) {
            print(text);
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          prefixIcon: Icon(
            Icons.lock_outlined,
            color: CustomColor.greyTextColor,
          ),
          hintText: 'password'.tr,
        ),
        SizedBox(
          height: 20,
        ),
        _forgotPassword(),
      ],
    );
  }

  Widget _forgotPassword() {
    return TextButton(
        onPressed: () {},
        child: Text(
          'forgot_password'.tr,
          style: CustomTextStyle.greyContentStyle,
        ));
  }

  Widget _loginButton() {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(Get.width - 60, 60),
          backgroundColor: CustomColor.green,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
        child: Wrap(
          children: [
            Icon(
              Icons.arrow_forward_rounded,
              color: Colors.white,
            ),
            Text(
              'sign_in'.tr,
              style: CustomTextStyle.buttonTextStyle,
            )
          ],
        ),
        onPressed: () {
          return null;
        },
      ),
    );
  }

  Widget _changeLang() {
    return TextButton(
        onPressed: () {
          Get.updateLocale(Get.locale == Locale('tr', 'TR')
              ? Locale('en', 'US')
              : Locale('tr', 'TR'));
        },
        child: Text(Get.locale == Locale('tr', 'TR') ? 'English' : 'Türkçe'));
  }
}
