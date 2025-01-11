import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

class CustomDrawerController extends GetxController {
  final AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();
  var selectedIndex = 0.obs;

  void drawerController() {
    advancedDrawerController.showDrawer();
  }

  void selectItem(int index) {
    selectedIndex.value = index; // Update selected item
  }
}
