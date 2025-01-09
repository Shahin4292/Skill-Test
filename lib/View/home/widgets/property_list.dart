import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_test/Res/assets/app_assets.dart';
import 'package:skill_test/Res/colors/app_colors.dart';
import 'package:skill_test/Res/components/modify_text.dart';

import '../../../Model/property/property_model.dart';

class PropertyList extends StatelessWidget {
  final Property property;

  const PropertyList({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 70,
          width: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: NetworkImage(property.imageUrl), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            ModifiedText(
              text: property.name,
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            ModifiedText(
              text:
                  'Rp ${property.price.toStringAsFixed(0)} / ${property.priceType}',
              size: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.blueShade,
            ),
            Row(
              spacing: 8,
              children: [
                SvgPicture.asset(
                  AppAssets.bedroom,
                  height: 13,
                  width: 16,
                  color: AppColor.darkGrey,
                ),
                ModifiedText(
                    text: '${property.bedrooms} Bedroom',
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.darkGrey),
                SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  AppAssets.bathroom,
                  height: 13,
                  width: 16,
                  color: AppColor.darkGrey,
                ),
                ModifiedText(
                  text: '${property.bathrooms} Bathroom',
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.darkGrey,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
