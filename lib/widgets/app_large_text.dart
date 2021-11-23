

import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final bool isBold;
  const LargeText({Key? key,this.size=30,required this.text,this.color=Colors.black, this.isBold=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        color: color
      ),
    );
  }
}
