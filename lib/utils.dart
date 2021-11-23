

import 'package:flutter/material.dart';

List images = [
  "image1.jpg",
  "image2.jpg",
  "image3.jpg",
];

var images1={
  "bollon.jpg":"ballon",
  "hiking.jpg":"hiking",
  "kayaking.jpg":"kayaking",
  "snorkling.jpg":"snorkling",
};

var baseUrl="http://mark.bslmeiyu.com/api/getplaces";


class CircleTabIndicator extends Decoration{
  final Color color;
  final double radius;

  const CircleTabIndicator({required this.color,required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }

}

class _CirclePainter extends BoxPainter{
  final Color color;
  final double radius;

  _CirclePainter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint=Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final _circleOffset=Offset(configuration.size!.width/2-radius/2, configuration.size!.height-radius/2);
    canvas.drawCircle(offset+_circleOffset, radius, _paint);
  }

}