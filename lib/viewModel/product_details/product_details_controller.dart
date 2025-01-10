import 'package:get/get.dart';

import '../../Model/property/property_model.dart';

class PropertyDetailsController extends GetxController {
  final Rx<Property?> property = Rx<Property?>(null);
  final bool isFavorite = false;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is Property) {
      property.value = Get.arguments;
    }
  }

// void toggleFavorite() {
//   property.update((prop) {
//     if (prop != null) prop.isFavorite = !prop.isFavorite;
//   });
// }
}
