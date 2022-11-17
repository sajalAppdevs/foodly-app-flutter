import 'package:flutter/material.dart';
import 'package:project2/app/util/color.dart';

class CustomCircle extends CustomPainter {
  bool bottom = false;
  CustomCircle({bottom}) {
    if (bottom != null) {
      this.bottom = bottom;
    }
  }
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = reds;
    Paint paint1 = Paint()
      ..color = orange
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;
    if (bottom == true) {
      canvas.drawCircle(Offset(0, size.height), 220, paint);
      canvas.drawCircle(Offset(30, size.height), 200, paint1);
    } else {
      canvas.drawCircle(Offset(size.width, 0), 220, paint);
      canvas.drawCircle(Offset(size.width, 30), 200, paint1);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}