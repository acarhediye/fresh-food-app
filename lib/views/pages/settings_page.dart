import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/settings_controller.dart';
import 'package:get/get.dart';

class SettingsPage extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Settings Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
