import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDoora extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final Size(:width,:height) = size;

    final radius = min(width, height)/2;
    final center = Offset(width/2,height/2);
    final lefteyecenter = Offset(width/2 - width *0.20,height /2  - height *0.15);
    final righteyecenter = Offset(width/2 + width *0.20,height /2  - height *0.15);







    Paint facepaint = Paint()..color=Colors.white;
    Paint eyepaint = Paint()..color=Colors.black..style = PaintingStyle.stroke;


    Path path = Path();
    path.close();
    final lefteyeovalRect = Rect.fromCenter(center: lefteyecenter, width: size.width * 0.2, height: size.height * 0.3);

    final righteyeovalRect = Rect.fromCenter(center: righteyecenter, width: size.width * 0.2, height: size.height * 0.3);
    canvas.drawCircle(center, radius, facepaint);
    canvas.drawOval(lefteyeovalRect,eyepaint );
    canvas.drawOval(righteyeovalRect,eyepaint );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}