import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/home_controller.dart';
import 'package:get/get.dart';
class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
