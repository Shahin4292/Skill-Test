import 'package:flutter/cupertino.dart';

class ModifiedText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? fontWeight;

  const ModifiedText(
      {super.key,
      required this.text,
      this.color,
      required this.size,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: 'RaleWayBold'),
    );
  }
}
