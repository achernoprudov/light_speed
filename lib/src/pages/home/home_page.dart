import 'package:flutter/material.dart';
import 'package:light_speed/src/widget/photon_painter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Light speed'),
      ),
      body: Container(
        color: Colors.blue,
        width: double.maxFinite,
        height: 200,
        child: CustomPaint(
          painter: PhotonPainter(0.9),
        ),
      ),
    );
  }
}
