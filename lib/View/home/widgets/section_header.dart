import 'package:flutter/material.dart';
import 'package:skill_test/Res/colors/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeMore;

  const SectionHeader(
      {super.key, required this.title, required this.onSeeMore});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500)),
        TextButton(
            onPressed: onSeeMore,
            child: Text(
              'See more',
              style: TextStyle(fontSize: 12,color: AppColor.darkGrey, fontWeight: FontWeight.w400),
            )),
      ],
    );
  }
}
