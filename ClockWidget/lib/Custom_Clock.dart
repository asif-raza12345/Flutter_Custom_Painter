import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  DateTime now;
  Color dialColor;
  Color dialborderColor;

  MyCustomPainter(
      {required this.now,
      this.dialColor = Colors.white,
      this.dialborderColor = Colors.black});

  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;
    List<String> hourNumbers = [
      '12',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      '11'
    ];

    final radius = min(width, height) / 2;
    final borderRedius = min(width, height) / 2;
    final Clickradius = borderRedius * 0.90;
    final double bellRadius = radius * 0.3;
    final linewidth = width * 0.06;
    final hoursTickwidth = width * 0.02;
    final mintsTicklength = height * 0.1;
    final mintsTickwidth = width * 0.003;
    final hoursNodleradius = radius * 0.15;
    final mintNodleradius = radius * 0.1;
    final mintNodlelength = radius * 0.50;

    final angle = 2 * pi / 60;

// upper lines
    final startYdivation = radius * 0.80;
    final startXdivation = radius * 0.70;
    final endYdivation = radius * 0.60;
    final endXdivation = radius * 0.45;

//     off sets
    final center = Offset(width / 2, height / 2);
    final leftstartline =
        Offset(width / 2 - startXdivation, height / 4 - startYdivation);
    final leftendline =
        Offset(width / 2 - endXdivation, height / 3 - endYdivation);
    final rightstartline =
        Offset(width / 2 + startXdivation, height / 4 - startYdivation);
    final rightendline =
        Offset(width / 2 + endXdivation, height / 3 - endYdivation);

//  draw body
    final ClockCenter = Offset(width / 2, height / 2);
    final ClockBoderCenter = Offset(width / 2, height / 2);

//  draw cap

    final hoursNodlecenter = Offset(center.dx, center.dy);

    final ClockPaint = Paint()..color = dialColor;
    final ClocBorderkPaint = Paint()..color = dialborderColor;
    final lineBorderkPaint = Paint()
      ..color = dialborderColor
      ..style = PaintingStyle.stroke;
    final mintTickpaint = Paint()
      ..color = Colors.black
      ..strokeWidth = mintsTickwidth;
    final nodlebordercolor = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke;


    // draw diaBorder
    canvas.drawCircle(ClockBoderCenter, borderRedius, ClocBorderkPaint);
// draw dialFace
    canvas.drawCircle(ClockCenter, Clickradius, ClockPaint);

    final Paint bellPaint = Paint()..color = Colors.black;
    //    hoursNodle base
    canvas.drawCircle(hoursNodlecenter, hoursNodleradius, bellPaint);
    // hoursNodle base
    canvas.drawCircle(hoursNodlecenter, mintNodleradius, bellPaint);
    canvas.drawCircle(hoursNodlecenter, mintNodleradius, nodlebordercolor);
    //  border tickour
    canvas.drawCircle(
        Offset(center.dx, center.dy), radius * 0.80, lineBorderkPaint);
    canvas.drawCircle(
        Offset(center.dx, center.dy), radius * 0.70, lineBorderkPaint);

    canvas.save(); // Save canvas state
    canvas.translate(center.dx, center.dy);
    for (int i = 0; i < 12; i++) {
      canvas.save(); // Save rotation state
      // Angle for each hour (30 degrees per hour)
      canvas.rotate(angle); // Rotate canvas
      // Calculate text position
      double textY = -radius * 0.70; // Slightly inside clock border
      TextSpan span = TextSpan(
        text: hourNumbers[i], // Hour number
        style: TextStyle(
          color: Colors.black,
          fontSize: radius * 0.14,
          fontWeight: FontWeight.bold,
        ),
      );
      TextPainter tp = TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      );
      tp.layout();
      Offset textOffset = Offset(-tp.width / -15 - radius * 0.15,
          textY - tp.height / 2 + radius * 0.15);
      tp.paint(canvas, textOffset);

      canvas.restore(); // Restore rotation state
      canvas.rotate(pi / 6); // Rotate for next hour
    }
    canvas.restore(); // Restore main canvas state
    //    number
    canvas.save();
    //    draw origin from left to center
    canvas.translate(center.dx, center.dy);

    for (var i = 1; i <= 60; i++) {
      canvas.drawLine(Offset(0, -radius + radius * 0.30),
          Offset(0, -radius + (mintsTicklength)), mintTickpaint);
      if (now.minute == i) {
        canvas.drawLine(Offset(0, -mintNodleradius),
            Offset(0, -mintNodlelength), mintTickpaint);
      }
      if (now.hour == i) {
        canvas.drawLine(Offset(0, -hoursNodleradius), Offset(0, radius * 0.4),
            mintTickpaint);
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
