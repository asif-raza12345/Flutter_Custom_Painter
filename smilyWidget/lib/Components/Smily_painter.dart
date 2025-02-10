import 'package:flutter/material.dart';
import 'package:painter/Components/myCustomPainter.dart';

class SmilyWidget extends StatefulWidget {
  const SmilyWidget({
    super.key,
    required this.size,
    this.faceColor = Colors.blue,
    this.eyeColor = Colors.white,
    this.mouthColor = Colors.black,
    this.smileColor = Colors.black,
    this.noseColor = Colors.red,
    this.lenseColor = Colors.black,
    this.innerLenseColor = Colors.white,
    this.noseLineColor = Colors.black,
  });

  final Size size;
  final Color faceColor;
  final Color eyeColor;
  final Color smileColor;
  final Color mouthColor;
  final Color noseColor;
  final Color lenseColor;
  final Color innerLenseColor;
  final Color noseLineColor;

  @override
  State<SmilyWidget> createState() => _SmilyWidgetState();
}

class _SmilyWidgetState extends State<SmilyWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SmilyPainter(
        noseLineColor: widget.noseLineColor,
        eyeColor: widget.eyeColor,
        faceColor: widget.faceColor,
        smileColor: widget.smileColor,
        mouthColor: widget.mouthColor,
        lenseColor: widget.lenseColor,
        innerLenseColor: widget.innerLenseColor,
        noseColor: widget.noseColor,
      ),
      size: widget.size,
    );
  }
}
