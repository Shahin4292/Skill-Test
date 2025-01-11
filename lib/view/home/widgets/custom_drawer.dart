import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../../viewModel/drawer/drawer_controller.dart';

class CustomDrawer extends StatelessWidget {
  final CustomDrawerController controller = Get.put(CustomDrawerController());

  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(drawerItems.length, (index) {
        final item = drawerItems[index];
        final isLastInGroup = (index + 1) % 3 == 0;

        return Column(
          children: [
            Obx(() => _buildDrawerItem(
                  imagePath: item['image'],
                  title: item['title'],
                  height: item['height'],
                  width: item['width'],
                  isSelected: controller.selectedIndex.value == index,
                  onTap: () => controller.selectItem(index),
                )),
            if (isLastInGroup && index != drawerItems.length - 1)
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: const Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
          ],
        );
      }),
    );
  }

  Widget _buildDrawerItem({
    required String imagePath,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
    required double height,
    required double width,
    TextStyle? textStyle,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: ListTile(
          leading: SvgPicture.asset(
            imagePath,
            height: height,
            width: width,
            color: isSelected ? Colors.blue : Colors.white,
          ),
          title: Text(
            title,
            style: textStyle ??
                TextStyle(
                  color: isSelected ? Colors.blue : Colors.white,
                  fontSize: 16,
                  fontFamily: 'RaleWayBold',
                  fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
                ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
