import 'package:flutter/material.dart';

import '../../../Res/colors/app_colors.dart';
import '../../../Res/components/modify_text.dart';

class PriceActionButton extends StatelessWidget {
  final double price;
  final String priceType;
  final VoidCallback onRentNow;

  const PriceActionButton({
    super.key,
    required this.price,
    required this.priceType,
    required this.onRentNow,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Text(
        //   'Rp ${price.toStringAsFixed(0)} / $priceType',
        //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        // ),
        Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ModifiedText(
              text: "price",
              size: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.darkGrey,
            ),
            ModifiedText(
                text: 'Rp. 2.500.000.000 / Year',
                size: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ],
        ),
        SizedBox(width: 80,),
        Container(
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
        )
      ],
    );
  }
}
