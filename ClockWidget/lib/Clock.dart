// import 'dart:math';
// import 'package:flutter/material.dart';
//
// class MyCustomPainter extends CustomPainter {
//   DateTime now;
//   Color dialColor;
//   Color dialborderColor;
//
//   MyCustomPainter({
//     required this.now,
//     this.dialColor = Colors.blueGrey,
//     this.dialborderColor = Colors.deepOrange
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final Size(:width,:height) = size;
//     List<String> hourNumbers = ['12', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11'];
//     final radius = min(width, height) / 2;
//     final borderRadius = min(width, height) / 2;
//     final clickRadius = borderRadius * 0.90;
//     final double bellRadius = radius * 0.3;
//     final linewidth = width * 0.06;
//     final hoursTicklength = height * 0.15;
//     final hoursTickwidth = width * 0.02;
//     final mintsTicklength = height * 0.1;
//     final mintsTickwidth = width * 0.015;
//     final hoursNodleradius = radius * 0.15;
//     final mintNodleradius = radius * 0.1;
//     final hoursNodlelength = radius * 0.50;
//     final mintNodlelength = radius * 0.65;
//     final angle = 2 * pi / 60;
//
//     final center = Offset(width / 2, height / 2);
//
//     final ClockPaint = Paint()..color = dialColor;
//     final ClockBorderPaint = Paint()
//       ..color = dialborderColor
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 5;
//
//     final hourTickPaint = Paint()..color = Colors.white70..strokeWidth = hoursTickwidth;
//     final minuteTickPaint = Paint()..color = Colors.white..strokeWidth = mintsTickwidth;
//     final hourHandPaint = Paint()..color = Colors.redAccent;
//     final minuteHandPaint = Paint()..color = Colors.lightBlueAccent;
//     final nodleBorderPaint = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.stroke;
//
//     // Draw clock border
//     canvas.drawCircle(center, borderRadius, ClockBorderPaint);
//     // Draw clock face
//     canvas.drawCircle(center, clickRadius, ClockPaint);
//
//     // Draw ticks
//     canvas.translate(center.dx, center.dy);
//     canvas.save();
//     for (var i = 1; i <= 60; i++) {
//       var isHour = i % 5 == 0;
//       canvas.drawLine(
//         Offset(0, -radius + 10),
//         Offset(0, -radius + (isHour ? hoursTicklength : mintsTicklength)),
//         isHour ? hourTickPaint : minuteTickPaint,
//       );
//
//       if (now.minute == i) {
//         canvas.drawLine(
//           Offset(0, -mintNodleradius),
//           Offset(0, -mintNodlelength),
//           minuteHandPaint,
//         );
//       }
//       if (now.hour == i) {
//         canvas.drawLine(
//           Offset(0, -hoursNodleradius),
//           Offset(0, radius * 0.5),
//           hourHandPaint,
//         );
//       }
//       canvas.rotate(angle);
//     }
//     canvas.restore();
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
