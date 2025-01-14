import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:skill_test/View/home/widgets/apps_bar.dart';
import 'package:skill_test/View/home/widgets/button_category.dart';
import 'package:skill_test/View/home/widgets/property_Item.dart';
import 'package:skill_test/View/home/widgets/property_list.dart';
import 'package:skill_test/View/home/widgets/search_menu.dart';
import 'package:skill_test/View/home/widgets/section_header.dart';
import 'package:skill_test/view/home/widgets/custom_drawer.dart';
import '../../viewModel/controller/drawer/drawer_controller.dart';
import '../../viewModel/controller/home/home_controller.dart';
import '../details_product/details_product_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());
  CustomDrawerController drawerController = Get.put(CustomDrawerController());

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: drawerController.advancedDrawerController,
      openRatio: 0.55,
      openScale: 0.80,
      rtlOpening: false,
      backdropColor: Colors.blue,
      animationCurve: Curves.easeInOut,
      childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      drawer: CustomDrawer(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppsBar(),
                SearchMenu(),
                Obx(() {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: controller.categories.map((category) {
                        bool isSelected =
                            category == controller.selectedCategory.value;
                        return ButtonCategory(
                          label: category,
                          isSelected: isSelected,
                          onTap: () {
                            controller.selectCategory(category);
                          },
                        );
                      }).toList(),
                    ),
                  );
                }),
                SectionHeader(
                  title: 'Near from you',
                  onSeeMore: () {},
                ),
                Obx(() => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 24,
                        children: controller.nearProperties
                            .map((property) => SizedBox(
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsProductView(
                                                      imageUrl:
                                                          property.imageUrl,
                                                      name: property.name,
                                                      address: property.address,
                                                      bedrooms:
                                                          property.bedrooms,
                                                      bathrooms:
                                                          property.bathrooms,
                                                      price: property.price,
                                                    )));
                                      },
                                      child: PropertyItem(
                                        property: property,
                                      )),
                                ))
                            .toList(),
                      ),
                    )),
                SectionHeader(
                  title: 'Best for you',
                  onSeeMore: () {},
                ),
                Expanded(
                  child: Obx(() => SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          spacing: 24,
                          children: controller.bestForYouProperties
                              .map((property) =>
                                  PropertyList(property: property))
                              .toList(),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
