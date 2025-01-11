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
import '../../ViewModel/home/home_controller.dart';
import '../details_product/details_product_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());
  final AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();

  void drawerController() {
    advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advancedDrawerController,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppsBar(),
                SizedBox(height: 16),
                SearchMenu(),
                SizedBox(height: 16),
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
                SizedBox(height: 27),
                SectionHeader(
                  title: 'Near from you',
                  onSeeMore: () {},
                ),
                SizedBox(height: 24),
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
                SizedBox(
                  height: 30,
                ),
                SectionHeader(
                  title: 'Best for you',
                  onSeeMore: () {},
                ),
                SizedBox(
                  height: 25,
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
