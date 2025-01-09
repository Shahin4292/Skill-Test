import 'package:flutter/material.dart';

import '../../../Res/colors/app_colors.dart';

class PositionWidget extends StatelessWidget {
  final double? top, left, right;
  final VoidCallback onTab;
  final String imageUrl;
  final double? height;
  final double? weight;

  const PositionWidget({
    super.key,
    this.top,
    this.left,
    this.right,
    required this.onTab,
    required this.imageUrl,
    this.height,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      child: GestureDetector(
        onTap: onTab,
        child: Container(
            height: 36,
            width: 36,
            decoration:
                BoxDecoration(color: AppColor.darkGrey, shape: BoxShape.circle),
            child: Center(
              child: Image.asset(
                imageUrl,
                height: height,
                width: weight,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
