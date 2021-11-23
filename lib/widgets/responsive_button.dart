

import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final bool isResponsive;
  const ResponsiveButton({Key? key, required this.width, this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurpleAccent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.arrow_right,color:Colors.white),
          ],
        ),
    );
  }
}
