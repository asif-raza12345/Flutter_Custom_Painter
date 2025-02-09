import 'package:flutter/material.dart';
import 'package:painter/Components/Smily_painter.dart';
import 'package:painter/Components/myCustomPainter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SmilyWidget(size: Size(200, 200))
          ],
        ),
      ),
    );
  }
}
