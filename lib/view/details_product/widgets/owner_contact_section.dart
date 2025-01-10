import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class OwnerContactSection extends StatelessWidget {
  const OwnerContactSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 17,
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
              color: AppColor.darkGrey,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.men,
                ),
                fit: BoxFit.fill,
              )),
        ),
        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ModifiedText(
              text: 'Garry Allen',
              size: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            ModifiedText(
              text: 'Owner',
              size: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.darkGrey,
            ),
          ],
        ),
        Spacer(),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColor.blueShade,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppAssets.phone,
              height: 12,
              width: 12,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColor.blueShade,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppAssets.message,
              height: 12,
              width: 12,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}