import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/quick_shop_controller.dart';
import 'package:get/get.dart';

class QuickShopPage extends GetView<QuickShopController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Artı Butonu Page'),
        ),
      ),
    );
  }
}
