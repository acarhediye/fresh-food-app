part of '../settings_page.dart';

class _Button extends StatelessWidget {
  _Button({
    Key? key,
    required this.prefixIcon,
    required this.text,
    required this.suffixWidget,
    required this.onPressed,
  }) : super(key: key);

  IconData prefixIcon;
  String text;
  Widget suffixWidget;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 3),
      child: TextButton(
        style: TextButton.styleFrom(
          minimumSize: Size(Get.width - 90, 60),
          backgroundColor: CustomColor.paleGrey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                flex: 3,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      prefixIcon,
                      color: CustomColor.lightGreen,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      text.tr,
                      style: CustomTextStyle.greyContentStyle,
                    ),
                  ],
                )),
            suffixWidget,
            SizedBox(
              width: 20,
            ),
          ],
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
