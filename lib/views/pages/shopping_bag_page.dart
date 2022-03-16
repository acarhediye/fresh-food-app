import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/shopping_bag_controller.dart';
import 'package:get/get.dart';

class ShoppingBagPage extends GetView<ShoppingBagController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Shopping Bag Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
