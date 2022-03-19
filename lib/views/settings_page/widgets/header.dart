part of '../settings_page.dart';

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text("Settings",
              style: CustomTextStyle.greyHeaderStyle,
              textAlign: TextAlign.center),
    );
  }
}
