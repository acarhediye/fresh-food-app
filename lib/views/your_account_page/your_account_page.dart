import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customColors.dart';
import 'package:fresh_food/customStyle/customTextStyle.dart';
import 'package:fresh_food/views/widgets/page_header.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class YourAccountPage extends StatelessWidget {
  YourAccountPage({Key? key}) : super(key: key);
  bool notificationsController = true;
  bool newsletterController = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        primary: false,
        children: [
          PageHeader(
            prefixWidget: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: CustomColor.greyBlue,
                size: 25,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            text: 'your_account'.tr,
            suffixWidget: IconButton(
              icon: Icon(
                Icons.check,
                color: CustomColor.green,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          _yourInformation(),
          _yourPreferences(),
          _payment_methods()
        ],
      ),
    );
  }

  Widget _yourInformation() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Your Information
          Text(
            'your_information'.tr,
            style: CustomTextStyle.greyCardHeaderStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                color: CustomColor.paleGrey,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 15, top: 30),
              child: Column(
                children: [
                  _widget(
                      title: 'full_name'.tr,
                      subtitle: 'vedat',
                      suffixWidget: IconButton(
                          onPressed: () {}, icon: Icon(Icons.edit_outlined))),
                  _widget(
                      title: 'address'.tr,
                      subtitle:
                          'Ayyıldız mah. 123. sokak no:123 Etimesgut/Ankara',
                      suffixWidget: IconButton(
                          onPressed: () {}, icon: Icon(Icons.edit_outlined))),
                  _widget(
                      title: 'email'.tr,
                      subtitle: 'cetintasvedat@gmail.com',
                      suffixWidget: IconButton(
                          onPressed: () {}, icon: Icon(Icons.edit_outlined))),
                  _widget(
                      title: 'password'.tr,
                      subtitle: '**********',
                      suffixWidget: IconButton(
                          onPressed: () {}, icon: Icon(Icons.edit_outlined))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _yourPreferences() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Your Information
          Text(
            'your_preferences'.tr,
            style: CustomTextStyle.greyCardHeaderStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                color: CustomColor.paleGrey,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                children: [
                  _widget(
                      title: 'notifications'.tr,
                      suffixWidget:
                          _swich(controller: notificationsController)),
                  _widget(
                      title: 'newsletter'.tr,
                      suffixWidget: _swich(controller: newsletterController)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _payment_methods() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Your Information
          Text(
            'payment_methods'.tr,
            style: CustomTextStyle.greyCardHeaderStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: Get.width,
            decoration: BoxDecoration(
                color: CustomColor.paleGrey,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                children: [
                  _widget(
                      title: 'notifications'.tr,
                      suffixWidget:
                          _swich(controller: notificationsController)),
                  _widget(
                      title: 'newsletter'.tr,
                      suffixWidget: _swich(controller: newsletterController)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _widget(
      {required String title, String? subtitle, required Widget suffixWidget}) {
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width - 180,
                child: Text(
                  title,
                  style: CustomTextStyle.greyContentStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              subtitle != null
                  ? Container(
                      width: Get.width - 180,
                      child: Text(
                        subtitle,
                        style: CustomTextStyle.lightGreyContentStyle,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  : Container(),
            ],
          ),
          suffixWidget
        ],
      ),
    );
  }

  Widget _swich({required bool controller}) {
    return AnimatedContainer(
      width: 50,
      duration: const Duration(microseconds: 300),
      curve: Curves.decelerate,
      decoration: BoxDecoration(
        border: Border.all(
            color: controller ? CustomColor.green : CustomColor.greyBlue),
        borderRadius: BorderRadius.circular(50),
      ),
      child: AnimatedAlign(
          duration: Duration(microseconds: 300),
          alignment: controller ? Alignment.centerRight : Alignment.centerLeft,
          curve: Curves.decelerate,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: controller ? CustomColor.green : CustomColor.greyBlue,
              borderRadius: BorderRadius.circular(99),
            ),
            child: Icon(
              controller ? Icons.check : Icons.close,
              color: Colors.white,
              size: 20,
            ),
          )),
    );
  }
}
