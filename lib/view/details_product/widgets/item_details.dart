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
                size: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              ModifiedText(
                text: '$address, Jakarta selatan',
                size: 16,
                color: AppColor.lightGrey,
                fontWeight: FontWeight.w500,
              ),
              Row(
                spacing: 8,
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
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
                    size: 16,
                    color: AppColor.darkGrey,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 28,
                    width: 28,
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
                    color: AppColor.darkGrey,
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