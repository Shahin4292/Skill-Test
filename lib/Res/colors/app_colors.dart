import 'package:flutter/cupertino.dart';

class AppColor {
  static const Color grey = Color(0xFF838383);
  static const Color whiteSmoke = Color(0xFFF7F7F7);
  static const Color darkGrey = Color(0xFF858585);
  static const Color cyan = Color(0xFFB8B8B8);
}

class GradientColor {
  static LinearGradient gradientColor = LinearGradient(
    colors: [Color(0xFFA0DAFB), Color(0xFF0A8ED9)],
  );
}

class ColorGradient {
  static const LinearGradient gradientColor = LinearGradient(
    colors: [Color(0xFFF7F7F7), Color(0xFFF7F7F7)],
  );
}
