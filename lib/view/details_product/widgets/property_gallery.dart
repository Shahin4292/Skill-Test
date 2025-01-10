import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../viewModel/product_details/product_details_controller.dart';

class PropertyGallery extends StatelessWidget {
  PropertyGallery({
    super.key,
  });

  PropertyDetailsController controller = Get.put(PropertyDetailsController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: controller.imageUrls.map((url) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                url,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
