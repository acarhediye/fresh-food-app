import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_food/views/bottom_navigator/bottom_navigator.dart';
import 'package:get/get.dart';

void main() => runApp(const GetMaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Fresh Food',
      theme: ThemeData(
        backgroundColor: Colors.white,
        //primarySwatch: Colors.blue,
      ),
      home: Scaffold(bottomNavigationBar: CustomBottomNavigator()),
    );
  }
}
