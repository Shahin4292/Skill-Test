import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_test/View/home/widgets/apps_bar.dart';
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
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 48,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: AppColor.whiteSmoke,
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        hintText: 'Search address, or near you',
                        hintStyle: TextStyle(
                            color: AppColor.darkGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          size: 16,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
