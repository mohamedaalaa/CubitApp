

import 'package:cubit/widgets/app_large_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double size;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  String text;
  bool isIcon;
  IconData? icon;

  AppButton({Key? key,this.text='',this.isIcon=false,required this.size,required this.backgroundColor,required this.borderColor,required this.color,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: borderColor),
      ),
      child:Center(child: isIcon==false?LargeText(text: text,size: 15,color: color,):Icon(icon,color: color,))
    );
  }
}
