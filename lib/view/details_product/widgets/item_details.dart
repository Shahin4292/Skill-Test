import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skill_test/view/details_product/widgets/position_widget.dart';

import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.name,
    required this.address,
    required this.bedrooms,
    required this.bathrooms,
  });

  final String? name;
  final String? address;
  final int? bedrooms;
  final int? bathrooms;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PositionWidget(
          top: 20,
          left: 20,
          imageIcon: AppAssets.arrowBack,
          height: 13,
          weight: 8,
          onTab: () {
            Get.back();
          },
        ),
        PositionWidget(
          top: 20,
          right: 20,
          imageIcon: AppAssets.saveIcon,
          height: 15,
          weight: 12,
          onTab: () {},
        ),
        Positioned(
          left: 20,
          bottom: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              ModifiedText(
                text: name!,
                size: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              ModifiedText(
                text: '$address, Jakarta selatan',
                size: 12,
                color: AppColor.lightCyan,
                fontWeight: FontWeight.w400,
              ),
              Row(
                spacing: 8,
                children: [
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColor.darkGrey,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.bedroom,
                        height: 13,
                        width: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ModifiedText(
                    text: '$bedrooms Bedroom',
                    size: 12,
                    color: AppColor.lightCyan,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColor.darkGrey,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.bathroom,
                        height: 13,
                        width: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ModifiedText(
                    text: '$bathrooms Bathroom',
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.lightCyan,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}