import 'package:flutter/material.dart';

import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class PriceActionButton extends StatelessWidget {
  final double price;
  final VoidCallback onRentNow;

  const PriceActionButton({
    super.key,
    required this.price,
    required this.onRentNow,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ModifiedText(
                text: "price",
                size: 12,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
              ModifiedText(
                text: 'Rp $price / Year',
                size: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: onRentNow,
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: GradientColor.gradientColor),
              child: Center(
                child: ModifiedText(
                  text: "Rent Now",
                  fontWeight: FontWeight.w500,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
