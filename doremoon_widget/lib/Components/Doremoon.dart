import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Doremoon_painter.dart';

class Doremoon extends StatefulWidget {


  const Doremoon({
    super.key,
    required this.size,
    this.lockColor = Colors.orangeAccent,
    this.pocketColor = Colors.white,
    this.faceColor = Colors.blue,
    this.noseColor = Colors.red,
    this.eyeColor = Colors.white,
    this.lenseColor = Colors.black,
    this.mouthColor = Colors.black,
  });
  final Size size;
  final Color mouthColor;
  final   Color faceColor;
  final Color eyeColor;
  final Color noseColor;
  final Color lenseColor;
  final Color pocketColor;
  final Color lockColor;
  @override
  State<Doremoon> createState() => _DoremoonState();
}

class _DoremoonState extends State<Doremoon> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DoremoonPinter(
        mouthColor: widget.mouthColor,
        noseColor:  widget.noseColor,
        eyeColor:  widget.eyeColor,
        faceColor: widget.faceColor,
        lenseColor: widget.lenseColor,
        pocketColor: widget.pocketColor,
        lockColor: widget.lockColor,
      ),
      size: widget.size,
    );
  }
}
