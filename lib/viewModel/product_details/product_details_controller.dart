import 'package:get/get.dart';

import '../../Model/property/property_model.dart';
import '../../Res/assets/app_assets.dart';

class PropertyDetailsController extends GetxController {
  final Rx<Property?> property = Rx<Property?>(null);
  final bool isFavorite = false;
  final List<String> imageUrls = [
    AppAssets.drawing, // Replace with your image paths
    AppAssets.bedRoom,
    AppAssets.table,
    AppAssets.overlay,
  ];

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null && Get.arguments is Property) {
      property.value = Get.arguments;
    }
  }
}
