import 'dart:math';
import 'package:flutter/material.dart';

class SmilyPainter extends CustomPainter {
  final Color faceColor;
  final Color eyeColor;
  final Color smileColor;
  final Color mouthColor;
  final Color noseColor;
  final Color lenseColor;
  final Color innerLenseColor;
  final Color noseLineColor;

  SmilyPainter({
    this.faceColor = Colors.blue,
    this.eyeColor = Colors.white,
    this.mouthColor = Colors.black,
    this.smileColor = Colors.black,
    this.noseColor = Colors.red,
    this.lenseColor = Colors.black,
    this.innerLenseColor = Colors.white,
    this.noseLineColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var Size(:height, :width) = size;
    final radius = min(width, height) / 2;
    final center = Offset(width / 2, height / 2);
    final eyeradius = radius * 0.3;
    final noseRadius = radius * 0.1;
    final dotNoseRadius = radius * 0.03;
    final mouthRadius = radius * 0.5;
    final lensRadius = radius * 0.1;
    final innerLensRadius = radius * 0.03;
    final eyeVerticalOffset = height / 2 - radius * 0.5;
    final eyeHorizontalOffset = radius * 0.3;
    final noseOffset = Offset(width / 2, height * 0.4);
    final leftEyeOffset = Offset(width / 2 - eyeHorizontalOffset, eyeVerticalOffset);
    final rightEyeOffset = Offset(width / 2 + eyeHorizontalOffset, eyeVerticalOffset);
    final mouthOffset = Offset(center.dx, center.dy);
    final nosestartdevation = radius * 0.12;
    final nosestartline = Offset(noseOffset.dx, noseOffset.dy + nosestartdevation);
    final noseendline = Offset(mouthOffset.dx, mouthOffset.dy);

    // Mustache Properties
    final mustacheWidth = radius * 0.3;
    final mustacheHeight = radius * 0.05;
    final mustacheYOffset = noseOffset.dy + radius * 0.1;

    // Mustache Points
    final leftMustacheStart = Offset(noseOffset.dx - mustacheWidth, mustacheYOffset);
    final leftMustacheEnd = Offset(noseOffset.dx - mustacheWidth / 2, mustacheYOffset + mustacheHeight);

    final rightMustacheStart = Offset(noseOffset.dx + mustacheWidth, mustacheYOffset);
    final rightMustacheEnd = Offset(noseOffset.dx + mustacheWidth / 2, mustacheYOffset + mustacheHeight);

    final Paint facePaint = Paint()..color = faceColor;
    final Paint eyePaint = Paint()..color = eyeColor;
    final Paint nosePaint = Paint()..color = noseColor;
    final Paint mouthPaint = Paint()
      ..color = mouthColor
      ..style = PaintingStyle.fill;
    final Paint lensePaint = Paint()..color = lenseColor;
    final Paint innerLensePaint = Paint()..color = innerLenseColor;
    final Paint noseLinePaint = Paint()
      ..color = noseLineColor
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    final Paint mustachePaint = Paint()
      ..color = mouthColor
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    // Draw face
    canvas.drawCircle(center, radius, facePaint);
    // Draw eyes
    canvas.drawCircle(leftEyeOffset, eyeradius, eyePaint);
    canvas.drawCircle(rightEyeOffset, eyeradius, eyePaint);
    // Draw nose
    canvas.drawCircle(noseOffset, noseRadius, nosePaint);
    canvas.drawCircle(noseOffset, dotNoseRadius, eyePaint);
    // Draw nose line
    canvas.drawLine(nosestartline, noseendline, noseLinePaint);
    // Draw lenses
    canvas.drawCircle(leftEyeOffset, lensRadius, lensePaint);
    canvas.drawCircle(rightEyeOffset, lensRadius, lensePaint);
    // Draw inner lenses
    canvas.drawCircle(leftEyeOffset, innerLensRadius, innerLensePaint);
    canvas.drawCircle(rightEyeOffset, innerLensRadius, innerLensePaint);
    // Draw smile
    canvas.drawArc(Rect.fromCircle(center: mouthOffset, radius: mouthRadius),
        degToRadians(0), degToRadians(180), true, mouthPaint);
    // Draw Mustaches
    canvas.drawLine(leftMustacheStart, leftMustacheEnd, mustachePaint);
    canvas.drawLine(rightMustacheStart, rightMustacheEnd, mustachePaint);
  }

  double degToRadians(double deg) => deg * pi / 180;

  @override
  bool shouldRepaint(covariant SmilyPainter oldDelegate) {
    return oldDelegate.faceColor != faceColor ||
        oldDelegate.eyeColor != eyeColor ||
        oldDelegate.noseColor != noseColor ||
        oldDelegate.lenseColor != lenseColor;
  }
}
