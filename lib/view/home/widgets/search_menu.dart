import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Res/assets/app_assets.dart';
import '../../../Res/colors/app_colors.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(
          width: 8,
        ),
        GestureDetector(
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                gradient: GradientColor.gradientColor,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: SvgPicture.asset(
                AppAssets.menu,
                height: 16,
                width: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
