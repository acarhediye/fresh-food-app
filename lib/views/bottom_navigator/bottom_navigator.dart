import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food/controllers/bottom_navigator_controller.dart';
import 'package:fresh_food/controllers/favoreies_all_controller/favories_controller.dart';
import 'package:fresh_food/views/pages/quick_shop_page.dart';
import 'package:fresh_food/views/favories_page/favories_page.dart';
import 'package:fresh_food/views/pages/home_page.dart';
import 'package:fresh_food/views/pages/settings_page.dart';
import 'package:fresh_food/views/pages/shopping_bag_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CustomBottomNavigator extends StatelessWidget {
  late int selectedIndex = 0;
  final controller = Get.lazyPut(() => BottomNavigatorController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigatorController>(
        initState: (state) {},
        builder: (controller) {
          return Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                FavoriesPage(),
                QuickShopPage(),
                ShoppingBagPage(),
                SettingsPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.black54,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/icons/icons8-market-64_s.png",
                    height: 22,
                    width: 22,
                  ),
                  icon: Image.asset(
                    "assets/icons/icons8-market-64.png",
                    height: 22,
                    width: 22,
                  ),
                  title: Text(
                    'Market',
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/icons/icons8-wish-list-64_s.png",
                    height: 25,
                    width: 26,
                  ),
                  icon: Image.asset(
                    "assets/icons/icons8-wish-list-64.png",
                    height: 27,
                    width: 27,
                  ),
                  title: Text('Favories'),
                ),
                BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      "assets/icons/icons8-plus-64_s.png",
                      height: 28,
                      width: 28,
                    ),
                    icon: Image.asset(
                      "assets/icons/icons8-plus-64.png",
                      height: 28,
                      width: 28,
                    ),
                    title: Text('Plus')),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/icons/icons8-buying-64_s.png",
                    height: 25,
                    width: 30,
                  ),
                  icon: Image.asset(
                    "assets/icons/icons8-buying-64.png",
                    height: 25,
                    width: 30,
                  ),
                  title: Text('Shoppings'),
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    "assets/icons/icons8-security-configuration-64_s.png",
                    height: 25,
                    width: 30,
                  ),
                  icon: Image.asset(
                    "assets/icons/icons8-security-configuration-64.png",
                    height: 25,
                    width: 30,
                  ),
                  title: Text('Profil'),
                ),
              ],
            ),
          );
        });
  }
}
