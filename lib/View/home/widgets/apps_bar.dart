import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class AppsBar extends StatelessWidget {
  const AppsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ModifiedText(
              text: 'Location',
              color: AppColor.grey,
              size: 12,
              fontWeight: FontWeight.w400,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                ModifiedText(
                  text: 'Jakarta',
                  color: Colors.black,
                  size: 20,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  AppAssets.downArrow,
                  height: 10,
                  width: 10,
                )
              ],
            ),
          ],
        ),
        GestureDetector(
            child: SvgPicture.asset(
          AppAssets.notifications,
          height: 22,
          width: 17,
        )),
      ],
    );
  }
}
