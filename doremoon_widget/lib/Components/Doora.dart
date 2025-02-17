import 'dart:io';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDoora extends CustomPainter {

  Color faceColor;
  Color eyeColor;
  Color noseColor;

  CustomDoora({
    this.noseColor = Colors.amberAccent,
    this.faceColor = Colors.white,
    this.eyeColor = Colors.black
  });


  @override
  void paint(Canvas canvas, Size size) {
    final Size(:width, :height) = size;

    final radius = min(width, height) / 2;
    final lenswidth = radius * 0.05;


    final center = Offset(width / 2, height / 2);
    final lefteyecenter = Offset(
        width / 2 - width * 0.20, height / 2 - height * 0.15);
    final righteyecenter = Offset(
        width / 2 + width * 0.20, height / 2 - height * 0.15);
    final eyebrowstart1 = Offset(width / 3 + radius * 0.1, height / 6);
    final eyebrowend1 = Offset(width / 3, height / 2 - radius * 0.59);
    final eyebrowstart2 = Offset(width / 3.4, height / 6.5);
    final eyebrowend2 = Offset(width / 3.4, height / 2 - radius * 0.6);
    final eyebrowstart3 = Offset(width / 3.9 - radius * 0.09, height / 6);
    final eyebrowend3 = Offset(width / 3.9, height / 2 - radius * 0.57);

    // Right Eyebrow (Mirrored from Left Eyebrow)
    final righteyebrowstart1 = Offset(
        width - eyebrowstart1.dx, eyebrowstart1.dy);
    final righteyebrowend1 = Offset(width - eyebrowend1.dx, eyebrowend1.dy);
    final righteyebrowstart2 = Offset(
        width - eyebrowstart2.dx, eyebrowstart2.dy);
    final righteyebrowend2 = Offset(width - eyebrowend2.dx, eyebrowend2.dy);
    final righteyebrowstart3 = Offset(
        width - eyebrowstart3.dx, eyebrowstart3.dy);
    final righteyebrowend3 = Offset(width - eyebrowend3.dx, eyebrowend3.dy);

    final smilystart = Offset(center.dx -radius * 0.20, center.dy + radius* 0.40);
    final smilyend = Offset(center.dx+ radius * 0.20, center.dy +radius *0.40);
    final beltstart = Offset(center.dx -radius *0.60, center.dx +radius);
    final beltend = Offset(center.dx +radius *0.60 , center.dx +radius);
    final leftarmstart =Offset(beltstart.dx -radius *0.10, beltstart.dy +radius *0.13);
    final leftarmend =Offset(beltstart.dx -radius*0.30, beltstart.dy +radius*0.50);
    final rightarmstart =Offset(beltend.dx +radius *0.10, beltend.dy +radius *0.13);
    final rightarmend =Offset(beltend.dx +radius*0.30, beltend.dy +radius*0.50);


    //  Drawhand
    final lefthand = Offset(leftarmend.dx,leftarmend.dy);
    final rigthand = Offset(rightarmend.dx,rightarmend.dy);


    Paint facepaint = Paint()
      ..color = faceColor;
    Paint pocketborderpaint = Paint()
      ..color = eyeColor..style = PaintingStyle.stroke;
    Paint eyepaint = Paint()
      ..color = eyeColor
      ..style = PaintingStyle.stroke;
    Paint lenspaint = Paint()
      ..color = eyeColor
      ..style = PaintingStyle.stroke
      ..
      strokeWidth = lenswidth;
    Paint eyebrowpaint = Paint()
      ..color = eyeColor
      ..strokeWidth = radius * 0.02;
    Paint nosepaint = Paint()
      ..color = noseColor;
    Paint noseborderpaint = Paint()
      ..color = eyeColor
      ..style = PaintingStyle.stroke;
    Paint smilypaint = Paint()
      ..color = eyeColor;
    Paint linepaint = Paint()
      ..color = eyeColor;
    Paint backpaint =  Paint()..color = eyeColor..style =PaintingStyle.stroke..
    strokeWidth =radius *0.20;
    Paint beltpaint =  Paint()..color = Colors.indigo..style =PaintingStyle.stroke..
    strokeWidth =radius *0.15;

    Paint footpaint =  Paint()..color = Colors.white..style =PaintingStyle.stroke..
    strokeWidth =radius*0.30..strokeCap =StrokeCap.round;
    Paint legepaint  = Paint()..color = eyeColor..strokeWidth=radius *0.02;
    Paint armpaint  = Paint()..color =noseColor..strokeWidth=radius *0.25..strokeCap = StrokeCap.round;
    Paint handborder  = Paint()..color = Colors.black..style =PaintingStyle.stroke;









    Path path = Path();
    path.close();
    final lefteyeovalRect = Rect.fromCenter(center: lefteyecenter,
        width: size.width * 0.2,
        height: size.height * 0.3);
    final righteyeovalRect = Rect.fromCenter(center: righteyecenter,
        width: size.width * 0.2,
        height: size.height * 0.3);
    // lens
    final leftlens = Rect.fromCenter(center: righteyecenter,
        width: size.width * 0.1,
        height: size.height * 0.2);
    final rightlens = Rect.fromCenter(center: lefteyecenter,
        width: size.width * 0.1,
        height: size.height * 0.2);
    final nosecenter = Offset(center.dx, center.dy + 10);
    final noseRect = Rect.fromCenter(center: nosecenter,
        width: size.width * 0.15,
        height: size.height * 0.07);
    final noseborderRect = Rect.fromCenter(center: nosecenter,
        width: size.width * 0.15,
        height: size.height * 0.07);


    final pocketback = Offset(beltend.dx - radius *0.60, beltend.dy+ radius* 0.40);
    final Pocketoval = Rect.fromCenter(center: pocketback  , width: width *0.5, height: height* 0.4);
    final Pocketovalborder = Rect.fromCenter(center: pocketback  , width: width *0.5, height: height* 0.4);

    final linestart = Offset(center.dx - 10, center.dy);
    final lineend = Offset(center.dx + 10, center.dy);








    // Draw face
    canvas.drawCircle(center, radius,facepaint);
    // Draw lefteye
    canvas.drawOval(lefteyeovalRect,eyepaint);
    // Draw righteye
    canvas.drawOval(righteyeovalRect,eyepaint);
    //   Draw  left lens
    canvas.drawOval(leftlens,lenspaint);
    // Draw  left lens
    canvas.drawOval(rightlens,lenspaint);
    //  lefteyebrowlines
    canvas.drawLine(eyebrowstart1,eyebrowend1, eyebrowpaint);
    canvas.drawLine(eyebrowstart2,eyebrowend2, eyebrowpaint);
    canvas.drawLine(eyebrowstart3,eyebrowend3, eyebrowpaint);

    canvas.drawLine(righteyebrowstart1, righteyebrowend1, eyebrowpaint);
    canvas.drawLine(righteyebrowstart2, righteyebrowend2, eyebrowpaint);
    canvas.drawLine(righteyebrowstart3, righteyebrowend3, eyebrowpaint);
    //  draw eyebrow
    double eyebrowHeightOffset = height * 0.2; // Move eyebrows higher
    Path leftEyebrow = Path();
    leftEyebrow.moveTo(
        width / 3 - radius * 0.22, height / 3 - eyebrowHeightOffset); // Move up
    leftEyebrow.quadraticBezierTo(
        width / 2.8, height / 4.5 - eyebrowHeightOffset,
        width / 2.3, height / 3 - eyebrowHeightOffset); // Move up
    // Right Eyebrow (Curved, Higher)
    Path rightEyebrow = Path();
    rightEyebrow.moveTo(width * 2 / 3 + radius * 0.27,
        height / 3 - eyebrowHeightOffset); // Move up
    rightEyebrow.quadraticBezierTo(
        width / 1.8 +  radius *0.28, height / 4.5 - eyebrowHeightOffset,
        width / 1.7 + 1, height / 3 - eyebrowHeightOffset); // Move up
    // Draw eyebrows
    canvas.drawPath(leftEyebrow, lenspaint);
    canvas.drawPath(rightEyebrow, lenspaint);
    // Left Eyebrow (Curved, Higher)


    //   Draw nose
    canvas.drawOval(noseRect, nosepaint);
    canvas.drawOval(noseborderRect, noseborderpaint);
    canvas.drawLine(linestart, lineend, linepaint);


    //   Draw smily
    canvas.drawLine(smilystart, smilyend, smilypaint);

    canvas.drawPath(path, smilypaint);
    canvas.drawLine(beltstart, beltend, beltpaint);
    // draw body
    Rect rect = Rect.fromLTWH(
        radius *0.30,
        center.dy + radius,
        radius  * 0.99 +radius *0.4,
        radius *0.99 *1.5
    ); // (x, y, width, height)
    canvas.drawRect(rect, nosepaint);

    // draw leg
    canvas.drawLine(Offset(center.dx-radius*0.65, center.dy + (radius +radius+radius*0.55)), Offset(center.dx+ radius *0.65,center.dy +radius + radius + radius *0.55), footpaint);
    // straightline
    canvas.drawLine(Offset(center.dx, center.dy+(radius + radius +radius *0.30)), Offset(center.dx, center.dy+(radius +radius +radius*0.70)
    ), legepaint);
    canvas.drawLine(Offset(center.dx-radius*0.10, center.dy+(radius + radius +radius*0.30)), Offset(center.dx+radius*0.10, center.dy+(radius +radius +radius*0.30)
    ), legepaint);

    canvas.drawLine(leftarmstart, leftarmend, armpaint);
    // Draw hands
    canvas.drawLine(rightarmstart, rightarmend, armpaint);
    canvas.drawCircle(lefthand, radius * 0.14,facepaint);
    canvas.drawCircle(lefthand, radius * 0.14,handborder);
    canvas.drawCircle(rigthand, radius * 0.14,facepaint);
    canvas.drawCircle(rigthand, radius * 0.14,handborder);

    // draw beltkey
    final beltcenter = Offset(beltend.dx -radius * 0.60, beltend.dy -radius * 0.05);
    canvas.drawCircle(beltcenter, radius * 0.05, nosepaint);
    // draw pocketback
    canvas.drawOval(Pocketoval, facepaint);
    canvas.drawOval(Pocketovalborder, pocketborderpaint);
    // drawpocket
    final pocketcenter = Offset(beltend.dx - radius* 0.60, beltend.dy+  radius * 0.40);
    canvas.drawArc(Rect.fromCircle(center:pocketcenter , radius: radius * 0.3),
        degToRedian(0), degToRedian(180), true, pocketborderpaint);


    }

    double degToRedian(double deg) => deg * pi/180;
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return false;
    }
  }



  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
