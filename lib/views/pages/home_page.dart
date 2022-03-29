import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food/customStyle/customTextStyle.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        _searchBar(),
        _imageBrokoli(),
        Text("Vegetables",
            style: CustomTextStyle.greyCardHeaderStyle,
            textAlign: TextAlign.center),
        SizedBox(
          height: 2,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
          child: Text("Browse",
              style: TextStyle(
                  color: Color(0xffa6bcd0),
                  fontWeight: FontWeight.w500,
                  fontFamily: "AcuminPro",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.7),
              textAlign: TextAlign.center),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  _cardFruitOptions(
                    "assets/images/drawable-xxxhdpi/strawberry.png",
                    Colors.red.shade500,
                    "Berries",
                  ),
                  _cardFruitOptions(
                    "assets/images/drawable-xxxhdpi/orange.png",
                    Colors.orange.shade600,
                    "Citrus",
                  ),
                  _cardFruitOptions(
                    "assets/images/drawable-xxxhdpi/banana.png",
                    Colors.yellow,
                    "Bananas",
                  ),
                  _cardFruitOptions("assets/images/drawable-xxxhdpi/lemon.png",
                      Colors.yellow.shade500, "Lemons")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _imageBrokoli() {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/drawable-xxxhdpi/broccoli.png",
          ),
        ),
      ),
    );
  }
}

Widget _searchBar() {
  return Container(
    height: 100,
    child: Padding(
      padding: EdgeInsets.all(20.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Store",
          suffixIcon: Icon(
            Icons.search,
            size: 30,
            color: Colors.blueGrey,
          ),
          hintStyle: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w400,
              fontFamily: "AcuminPro",
              fontStyle: FontStyle.normal,
              fontSize: 20.3),
        ),
      ),
    ),
  );
}

Widget _cardFruitOptions(imagePath, backgroundColor, header) {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Container(
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        alignment: Alignment.bottomCenter,
        child: Text(
          header,
          style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
              fontFamily: "AcuminPro",
              fontStyle: FontStyle.normal,
              fontSize: 18),
        ),
      ),
      height: Get.height / 3,
      width: Get.width / 2,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          //fit: BoxFit.cover,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    ),
  );
}
