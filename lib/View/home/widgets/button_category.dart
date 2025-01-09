import 'package:flutter/material.dart';
import 'package:skill_test/Res/colors/app_colors.dart';

class ButtonCategory extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const ButtonCategory({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 34,
          width: 69,
          decoration: BoxDecoration(
            gradient: isSelected
                ? GradientColor.gradientColor
                : ColorGradient.gradientColor,
            // color: isSelected ? Colors.blue : Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.white : AppColor.darkGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
