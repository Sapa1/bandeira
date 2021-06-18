import 'dart:ui';

import 'package:flutter/material.dart';

class Bandeira extends StatelessWidget {
  const Bandeira({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 250,
          color: Colors.white,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    height: 60,
                    color: Colors.red.shade900,
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.blue.shade900,
                      width: 120,
                      height: 120,
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: CustomPaint(
                          size: Size(180, 180),
                          painter: DrawTriangleShape(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                color: Colors.red.shade900,
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  Paint? painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter!);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
