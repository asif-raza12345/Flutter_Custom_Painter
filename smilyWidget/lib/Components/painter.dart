import 'package:flutter/material.dart';
import 'package:painter/Components/Doremoon.dart';
import 'package:painter/Components/Smily_painter.dart';
import 'package:painter/Components/myCustomPainter.dart';

import 'Doremoon_painter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Doremoon(size: Size(200, 200),
            )
          ],
        ),
      ),
    );
  }
}
