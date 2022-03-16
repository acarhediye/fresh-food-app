import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/favories_controller.dart';
import 'package:get/get.dart';

class FavoriesPage extends GetView<FavoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text('Favories Page'),
        ),
      ),
    );
  }
}
