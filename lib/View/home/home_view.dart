import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_test/View/home/widgets/apps_bar.dart';
import 'package:skill_test/View/home/widgets/button_category.dart';
import 'package:skill_test/View/home/widgets/property_Item.dart';
import 'package:skill_test/View/home/widgets/property_list.dart';
import 'package:skill_test/View/home/widgets/search_menu.dart';
import 'package:skill_test/View/home/widgets/section_header.dart';
import '../../ViewModel/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                // width: 250,
                                // height: 400,
                                child: PropertyItem(property: property),
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
                            .map((property) => SizedBox(
                                  child: PropertyList(property: property),
                                ))
                            .toList(),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
