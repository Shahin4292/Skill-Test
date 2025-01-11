import 'package:get/get.dart';

class CustomDrawerController extends GetxController {
  var selectedIndex = 0.obs;

  void selectItem(int index) {
    selectedIndex.value = index; // Update selected item
  }
}
