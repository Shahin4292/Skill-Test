import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skill_test/View/home/widgets/apps_bar.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppsBar(),
              SizedBox(height: 16),
              SearchMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
