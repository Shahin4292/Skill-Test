import 'package:get/get.dart';

import '../../../Model/property/property_model.dart';
import '../../../Repository/property_repository/property_repository.dart';

class HomeController extends GetxController {
  final PropertyRepository repository = PropertyRepository();
  var nearProperties = <Property>[].obs;
  var bestForYouProperties = <Property>[].obs;
  var selectedCategory = "House".obs;
  final List<String> categories = [
    "House",
    "Apartment",
    "Hotel",
    "Villa",
    "Cottage"
  ];

  @override
  void onInit() {
    super.onInit();
    fetchProperties();
  }

  void selectCategory(String category) {
    selectedCategory.value = category;
  }

  void fetchProperties() {
    nearProperties.value = repository.getNearProperties();
    bestForYouProperties.value = repository.getBestForYouProperties();
  }
}
