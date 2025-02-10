import 'package:flutter/material.dart';
import 'dart:math';

class DoremoonPinter extends CustomPainter {

  Color mouthColor;
  Color faceColor;
  Color eyeColor;
  Color noseColor;
  Color lenseColor;
  Color pocketColor;
  Color lockColor;
  DoremoonPinter({
    this.lockColor = Colors.orangeAccent,
    this.pocketColor = Colors.white,
    this.faceColor = Colors.blue,
    this.noseColor = Colors.red,
    this.eyeColor = Colors.white,
    this.lenseColor = Colors.black,
    this.mouthColor = Colors.black
  });



  @override
  void paint(canvas, Size size) {
    var Size(:height , :width) = size;
    final radius = min(width,height)/2;
    final headradius = min(size.width, size.height) / 3;
    final bodyradius = min(size.width, size.height) / 3;
    final mouthbackRadius =  min(width/4, height/2);
    final pocketradius  =   radius * 0.40;
    final pocketbackradius  = radius * 0.50;
    final handradius = radius * 0.15;
    final EyeRadius =  radius * 0.2;
    final lensRadius =  radius * 0.05;
    final innerlensRadius =  radius * 0.018;
    final NoseRadius =  radius * 0.07;
    final NoseDartRadius =  radius * 0.018;
    final mouthradius  = radius * 0.45;
    final body1 =  radius * 0.6;
    final body2 = radius * 0.7;
    final bodydivation = body1 + body2;
    final Xeyedivation = radius * 0.20;
    final Yeyedivation = radius * 0.3;
    final nosedivation = radius * 0.1;
    final backfacedevation = radius * 0.14;
    final nosestartdevation = radius * 0.07;
    final pocketdivation = radius * 0.12;
    final pocketYdivation = radius * 0.20;
    final legYdivationend = radius * 0.80;
    final legXivation = radius * 0.22;
    final legydivationstart1 = radius * 0.60;
    final legYdivationstart =  legydivationstart1 + legydivationstart1;
    final leftstartfeetdivation = radius  * 0.03;
    final legwidth = width * 0.20;
    final handwidth = width * 0.15;
    final lockradius = radius * 0.05;



    // 0ffsets
    //  draw face
    final headcenter = Offset(height/2 ,width/2);
    final backfacecenter = Offset(width/2, headcenter.dy + backfacedevation);
    final mouthcenter  =Offset(width/2, height/2 + backfacedevation);
    final leftEyecenter = Offset(width/2 - Xeyedivation ,height/2 - Yeyedivation);
    final RighrtEyecenter = Offset(width/2 + Xeyedivation ,height/2 - Yeyedivation);
    final Leftlenscenter =  Offset(width/2 - Xeyedivation ,height/2 - Yeyedivation);
    final Righrtlenscenter = Offset(width/2 + Xeyedivation ,height/2 - Yeyedivation);
    final Leftinnerlenscenter =  Offset(width/2 - Xeyedivation ,height/2 - Yeyedivation);
    final Righrtinnerlenscenter = Offset(width/2 + Xeyedivation ,height/2 - Yeyedivation);
    final NoseCenter = Offset(width/2, height /2 - nosedivation);
    final innerNoseCenter = Offset(width/2, height /2 - nosedivation);
    final nosestartline = Offset(NoseCenter.dx, NoseCenter.dy + nosestartdevation);
    final noseendline = Offset(mouthcenter.dx, mouthcenter.dy);





    // draw body
    final bodycenter = Offset(width/2 , headcenter.dy + bodydivation);
    final pocketbackcenter = Offset(bodycenter.dx, bodycenter.dy - pocketdivation);
    final pocketcenter = Offset(width/2 , bodycenter.dy -pocketYdivation);



    // draw legs
    final leftlegtstartline = Offset(pocketcenter.dx -legXivation, pocketcenter.dy + legYdivationstart);
    final leftlegendtline = Offset(pocketcenter.dx -legXivation, pocketcenter.dy+legYdivationend);
    final rightleftstartline = Offset(pocketcenter.dx +legXivation, pocketcenter.dy + legYdivationstart);
    final righttlegendtline = Offset(pocketcenter.dx +legXivation, pocketcenter.dy+legYdivationend);
    final leftstartfeet = Offset(leftlegtstartline.dx,leftlegtstartline.dy+leftstartfeetdivation);
    final leftenffeet = Offset(leftlegtstartline.dx,leftlegtstartline.dy +leftstartfeetdivation);
    final rightstartfeet = Offset(rightleftstartline.dx,rightleftstartline.dy+leftstartfeetdivation);
    final rightenffeet = Offset(rightleftstartline.dx,rightleftstartline.dy +leftstartfeetdivation);


    //  draw belt
    final beltdivatoin = radius * 0.65;
    final beltTop = bodycenter.dy - beltdivatoin;
    final beltHeight = bodyradius * 0.1;
    final beltWidth = bodyradius * 1;
    final beltRect = Rect.fromCenter(
      center: Offset(bodycenter.dx, beltTop),
      width: beltWidth,
      height: beltHeight,
    );
    final lockcenter = Offset(pocketbackcenter.dx,height/1.22);
    //
    final armXdivation  = radius * 0.52;
    final armYdivation = radius * 0.30;
    final xdivation = radius * 0.98;
    final ydivation = radius * 0.50;


    //  draw arms
    final leftarmstart =Offset(pocketcenter.dx + armXdivation,pocketcenter.dy-armYdivation);
    final leftarmend = Offset(pocketcenter.dx +xdivation,pocketcenter.dy-ydivation);
    final rightarmsart = Offset(pocketcenter.dx -armXdivation,pocketcenter.dy-armYdivation);
    final rightarmend = Offset(pocketcenter.dx -xdivation,pocketcenter.dy-ydivation);
    final lefthandcenter = Offset(leftarmend.dx, leftarmend.dy);
    final righthandcenter = Offset(rightarmend.dx, rightarmend.dy);




    // Left Mustaches Divation
    final StartMustachesXderivation = radius * 0.5;
    final EndtMustachesXderivation = radius * 0.1;
    final EndtMustachesYderivation = radius * 0.05;
    final leftMustachesdevation = radius * 0.07;
    final lefMustachesdevation = radius * 0.1;
    final leftMustachesdevation2 = radius * 0.15;
    final startleftMustachesdevation3 = radius * 0.2;
    final endtleftMustachesdevation3 = radius * 0.25;




    //  Draw Right Mustaches
    final rightMustachesydevation3 = radius * 0.10;
    final Mustache1stratline  =  Offset(NoseCenter.dx - StartMustachesXderivation, NoseCenter.dy);
    final Mustache1endline =  Offset(NoseCenter.dx -EndtMustachesXderivation, NoseCenter.dy  + EndtMustachesYderivation);
    final Mustachestratline2  =  Offset(headcenter.dx - StartMustachesXderivation, headcenter.dy);
    final Mustacheendline2 =  Offset(headcenter.dx -EndtMustachesXderivation, headcenter.dy);
    final Mustachestratline3  =  Offset(headcenter.dx - StartMustachesXderivation, headcenter.dy + rightMustachesydevation3);
    final Mustacheendline3 =  Offset(headcenter.dx -EndtMustachesXderivation, headcenter.dy  + EndtMustachesYderivation);



    // Draw Right Mustaches
    final RMustache1stratline  =  Offset(NoseCenter.dx + StartMustachesXderivation, NoseCenter.dy);
    final RMustache1endline =  Offset(NoseCenter.dx + EndtMustachesXderivation, NoseCenter.dy  + EndtMustachesYderivation);
    final RMustachestratline2  =  Offset(headcenter.dx + StartMustachesXderivation, headcenter.dy);
    final RMustacheendline2    =  Offset(headcenter.dx + EndtMustachesXderivation, headcenter.dy);
    final RMustachestratline3  =  Offset(headcenter.dx + StartMustachesXderivation, headcenter.dy + rightMustachesydevation3);
    final RMustacheendline3 =  Offset(headcenter.dx + EndtMustachesXderivation, headcenter.dy  + EndtMustachesYderivation);

    // paint Colors
    final  facePaint = Paint()..color = faceColor;
    final  nosepaint = Paint()..color = noseColor;
    final  eyepaint = Paint()..color = eyeColor;
    final  eyeboarderpaint = Paint()..color = lenseColor
      ..style =  PaintingStyle.stroke;
    final  lensrpaint = Paint()..color = lenseColor;
    final  innerlenspaint = Paint()..color = eyeColor;
    final  innrnosepaint = Paint()..color = eyeColor;
    final  noselinepaint = Paint()..color = lenseColor;
    final  Mustachespaint = Paint()..color = lenseColor;
    final  pocketpaint = Paint()..color = pocketColor;
    final  pocketborderpaint = Paint()..color = lenseColor ..
    style = PaintingStyle.stroke;
    final  legpaint = Paint()..color = faceColor..
    strokeWidth = legwidth..strokeCap = StrokeCap.round;
    final  feetpaint = Paint()..color = pocketColor..
    strokeWidth = legwidth..strokeCap = StrokeCap.round;
    final  armpaint = Paint()..color = faceColor..
    strokeWidth = handwidth..strokeCap = StrokeCap.round;
    final  lockpant = Paint()..color = lockColor;









    // draw face
    canvas.drawCircle(headcenter, headradius,facePaint );
    // draw body
    canvas.drawCircle(bodycenter,  bodyradius, facePaint);
    // draw backmouth
    canvas.drawCircle(backfacecenter, mouthbackRadius, eyepaint);
    // draw smily
    canvas.drawArc(Rect.fromCircle(center: mouthcenter, radius:mouthradius), degToRadians(0), degToRadians(180), true, nosepaint);
    //  left Eye
    canvas.drawCircle(leftEyecenter, EyeRadius, eyepaint);
    // Right Eye
    canvas.drawCircle(RighrtEyecenter,EyeRadius, eyepaint);
    //  LeftEye border
    canvas.drawCircle(leftEyecenter, EyeRadius, eyeboarderpaint);
    //   Eye border
    canvas.drawCircle(RighrtEyecenter, EyeRadius, eyeboarderpaint);
    canvas.drawCircle(RighrtEyecenter, EyeRadius, eyeboarderpaint);
    //   left lens
    canvas.drawCircle(Leftlenscenter, lensRadius,lensrpaint);
    // Right lens
    canvas.drawCircle(Righrtlenscenter, lensRadius,lensrpaint);
    //    left inner lens
    canvas.drawCircle(Leftinnerlenscenter, innerlensRadius,innerlenspaint);
    //    Right inner lens
    canvas.drawCircle(Righrtinnerlenscenter, innerlensRadius,innerlenspaint);
    //    nos line
    canvas.drawCircle(NoseCenter, NoseRadius, nosepaint);
    //    inner nos dart
    canvas.drawCircle(innerNoseCenter, NoseDartRadius, innrnosepaint);
    //    nosline
    canvas.drawLine(nosestartline, noseendline,noselinepaint);
    //  Draw  left Mustaches
    canvas.drawLine(Mustache1stratline, Mustache1endline,Mustachespaint );
    canvas.drawLine(Mustachestratline2, Mustacheendline2,Mustachespaint );
    canvas.drawLine(Mustachestratline3, Mustacheendline3,Mustachespaint );
//  Draw  right Mustaches
    canvas.drawLine(RMustache1stratline, RMustache1endline,Mustachespaint );
    canvas.drawLine(RMustachestratline2, RMustacheendline2,Mustachespaint );
    canvas.drawLine(RMustachestratline3, RMustacheendline3,Mustachespaint );
    // pocket back
    canvas.drawCircle(pocketbackcenter, pocketbackradius, eyepaint);
    // draw pocket
    canvas.drawArc(Rect.fromCircle(center: pocketcenter, radius:pocketradius), degToRadians(0), degToRadians(180), true, pocketpaint);
    //  draw pocketborder
    canvas.drawArc(Rect.fromCircle(center: pocketcenter, radius:pocketradius), degToRadians(0), degToRadians(180), true, pocketborderpaint);
    //  draw belt
    canvas.drawRect(beltRect, nosepaint);
    // draw left leg
    canvas.drawLine(leftlegtstartline, leftlegendtline, legpaint);
    // draw right leg
    canvas.drawLine(rightleftstartline, righttlegendtline, legpaint);
    // draw left feet
    canvas.drawLine(leftstartfeet, leftenffeet, feetpaint);
    // draw right feet
    canvas.drawLine(rightstartfeet, rightenffeet, feetpaint);
    //   draw left arm
    canvas.drawLine(leftarmstart, leftarmend, armpaint);
    //   draw right  arm
    canvas.drawLine(rightarmsart, rightarmend, armpaint);
    // draw left hand
    canvas.drawCircle(lefthandcenter, handradius, eyepaint);
    //   draw right  hand
    canvas.drawCircle(righthandcenter, handradius, eyepaint);
    //    draw beltlock
    canvas.drawCircle(lockcenter, lockradius, lockpant);


  }
  double degToRadians(double deg )=>deg * pi/180;
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

