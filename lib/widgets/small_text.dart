import 'package:flutter/material.dart';
import 'package:my_app/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
  double height;
  TextOverflow overflow;

  SmallText({
    Key? key,
    this.color = const Color(0xFFCCC7C5),
    required this.text,
    this.size,
    this.height = 1.2,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size ?? Dimensions.font12,
        height: height,
      ),
    );
  }
}
