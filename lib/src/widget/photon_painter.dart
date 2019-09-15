import 'package:flutter/material.dart';

class PhotonPainter extends CustomPainter {
  final double position; // from 0.0 to 1.0

  PhotonPainter(this.position);

  @override
  void paint(Canvas canvas, Size size) {
    var y = size.height / 2;
    var x = size.width * position;
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white
      ..isAntiAlias = true;

    var center = Offset(x, y);
    canvas.drawCircle(center, 5, paint);

    canvas.save();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
