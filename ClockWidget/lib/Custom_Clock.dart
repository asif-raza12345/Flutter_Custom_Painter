import 'dart:math';

import 'package:flutter/material.dart';


class MyCustomPainter extends CustomPainter {
  DateTime now;
  Color dialColor;
  Color dialborderColor;

  MyCustomPainter({
    required this.now,
    this.dialColor = Colors.white,
    this.dialborderColor = Colors.black
});

  @override
  void paint(Canvas canvas, Size size) {
final Size(:width,:height) = size;
List<String> hourNumbers = ['12', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'];
final radius  = min(width, height)/2;
final borderRedius = min(width,height)/2;
final Clickradius = borderRedius * 0.90;
final double bellRadius = radius * 0.3;
final linewidth = width * 0.06;
final hoursTicklength = height * 0.15;
final hoursTickwidth = width * 0.02;
final mintsTicklength = height * 0.1;
final mintsTickwidth = width * 0.020;
final hoursNodleradius = radius* 0.15;
final mintNodleradius = radius* 0.1;
final hoursNodlelength= radius* 0.50;
final mintNodlelength= radius* 0.65;

final angle =   2 * pi/60;

// upper lines
    final startYdivation = radius * 0.80;
    final startXdivation = radius * 0.70;
    final endYdivation = radius * 0.60;
    final endXdivation = radius * 0.45;


//     off sets
    final center = Offset(width/2, height/2);
final leftstartline = Offset(width/2-startXdivation,height/4-startYdivation );
final leftendline = Offset(width/2 -endXdivation,height/3 -endYdivation );
final rightstartline = Offset(width/2+startXdivation,height/4-startYdivation );
final rightendline = Offset(width/2 +endXdivation,height/3 -endYdivation );

//  draw body
final ClockCenter  = Offset(width/2, height/2);
final ClockBoderCenter  = Offset(width/2, height/2);

//  draw cap
final Offset leftBellCenter = Offset(width * 0.21 , height * 0.01);
final Offset rightBellCenter = Offset(width * 0.79, height * 0.01);

// draw lower lines
    final lower = radius * 0.40;
    final lowerydivation = startYdivation + lower;
    final lowery = radius*0.95;

    final leftlowerlinestart = Offset(width/2-endYdivation,height/2+ lowerydivation );
    final leftlowertlineend = Offset(width/2-lower, height/2+lowery);

    final rightlowerlinestart = Offset(width/2+endYdivation,height/2+lowerydivation );
    final rightlowertlineend = Offset(width/2+lower, height/2+lowery);

    final hoursNodlecenter = Offset(center.dx, center.dy);



final ClockPaint = Paint()..color= dialColor;
final ClocBorderkPaint = Paint()..color= dialborderColor;
final lClocBorderkPaint = Paint()..color= Colors.grey..
    strokeWidth = linewidth..
    strokeCap=StrokeCap.round;
final hoursTickpaint = Paint()..color = Colors.black38..
strokeWidth = hoursTickwidth;
    final mintTickpaint = Paint()..color = Colors.black..
    strokeWidth = mintsTickwidth;
    final nodlebordercolor = Paint()..color= Colors.white..
    style  = PaintingStyle.stroke;
    final hourpaint  = Paint()..color=Colors.yellow;
    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,

    );



    // draw diaBorder
    canvas.drawCircle(ClockBoderCenter, borderRedius, ClocBorderkPaint);
// draw dialFace
     canvas.drawCircle(ClockCenter, Clickradius, ClockPaint);
     // draw upper line
     canvas.drawLine(leftstartline, leftendline, lClocBorderkPaint);
    canvas.drawLine(rightstartline, rightendline, lClocBorderkPaint);
// draw lower line
    canvas.drawLine(leftlowerlinestart,leftlowertlineend, lClocBorderkPaint);
    canvas.drawLine(rightlowerlinestart,rightlowertlineend, lClocBorderkPaint);

    final Paint bellPaint = Paint()..color = Colors.black;

    canvas.drawArc(
      Rect.fromCircle(center: leftBellCenter, radius: bellRadius),
      pi, pi,
      false, bellPaint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: rightBellCenter, radius: bellRadius),
      pi, pi,
      false, bellPaint,
    );
  //    hoursNodle base
    canvas.drawCircle(hoursNodlecenter, hoursNodleradius, bellPaint);
    // hoursNodle base
    canvas.drawCircle(hoursNodlecenter, mintNodleradius, bellPaint);
    canvas.drawCircle(hoursNodlecenter, mintNodleradius, nodlebordercolor);
  //    draw origin from left to center
    canvas.translate(center.dx, center.dy);
    canvas.save();

    for (var i = 1; i<= 60; i++){
      var isHours = i % 5 == 0;
      canvas.drawLine(
          Offset(0, -radius +10),
         Offset(0, -radius + (isHours ? hoursTicklength : mintsTicklength)),
          isHours? hoursTickpaint:mintTickpaint);
      if(now.minute == i){
        canvas.drawLine(Offset(0, -mintNodleradius),
            Offset(0, -mintNodlelength), mintTickpaint);
      }
      if(now.hour == i){
        canvas.drawLine(Offset(0, -hoursNodleradius),
            Offset(0, radius * 0.5), mintTickpaint);
      }
          canvas.rotate(angle);
    }
    canvas.restore();

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}