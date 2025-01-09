import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skill_test/View/home/widgets/apps_bar.dart';
import 'package:skill_test/View/home/widgets/button_category.dart';
import 'package:skill_test/View/home/widgets/search_menu.dart';
import '../../Res/assets/app_assets.dart';
import '../../Res/colors/app_colors.dart';
import '../../ViewModel/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SafeArea(
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
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   padding: EdgeInsets.symmetric(horizontal: 8),
              //   child: Row(
              //     children: ['House', 'Apartment', 'Hotel', 'Villa']
              //         .map((category) => ElevatedButton(
              //               onPressed: () {}, child: Text(category),
              //               // title: category,
              //               // isSelected: false,
              //               // onTap: () {},
              //             ))
              //         .toList(),
              //   ),
              // ),
              // SizedBox(height: 16),
              // SectionHeader(
              //   title: 'Near from you',
              //   onSeeMore: () {},
              // ),
              // Obx(() => SingleChildScrollView(
              //       scrollDirection: Axis.horizontal,
              //       child: Row(
              //         children: controller.nearProperties
              //             .map((property) => SizedBox(
              //                   width: 250,
              //                   height: 400,
              //                   child: PropertyCard(property: property),
              //                 ))
              //             .toList(),
              //       ),
              //     )),
              // SizedBox(height: 16),
              // SectionHeader(
              //   title: 'Best for you',
              //   onSeeMore: () {},
              // ),
              // Obx(() => ListView.builder(
              //       shrinkWrap: true,
              //       physics: NeverScrollableScrollPhysics(),
              //       itemCount: controller.bestForYouProperties.length,
              //       itemBuilder: (context, index) {
              //         return PropertyCard(
              //             property: controller.bestForYouProperties[index]);
              //       },
              //     )),
            ],
          ),
        ),
      ),
    );
  }
}
