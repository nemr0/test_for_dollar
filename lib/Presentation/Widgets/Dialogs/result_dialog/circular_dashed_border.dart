import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test_for_dollar/Presentation/style/constants.dart';

class CircularDashedBorder extends StatelessWidget {
  final Color color;
  final double size;
  final double width;
  final Widget percentage;

  const CircularDashedBorder(
      {Key? key,
      this.color = primaryColor,
      this.size = 70,
      this.width = 7.0,
      required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          percentage,
          CustomPaint(
            size: Size(size, size),
            painter: MyPainter(completeColor: color, width: width),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  Color lineColor = Colors.transparent;
  Color completeColor;
  double width;

  MyPainter({required this.completeColor, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = min(size.width / 2, size.height / 2);
    final double percent = (size.width * 0.001) / 8;

    double arcAngle = 2 * pi * percent;
    // print("$radius - radius");
    // print("$arcAngle - arcAngle");
    // print("${radius / arcAngle} - divider");

    for (var i = 0; i < 8; i++) {
      var init = (-pi / 2) * (i / 2);

      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), init,
          arcAngle, false, complete);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
