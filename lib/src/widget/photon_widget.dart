import 'package:flutter/material.dart';

import 'photon_painter.dart';

class PhotonWidget extends StatefulWidget {
  final int millis;

  const PhotonWidget({Key key, @required this.millis}) : super(key: key);

  @override
  _PhotonWidgetState createState() => _PhotonWidgetState();
}

class _PhotonWidgetState extends State<PhotonWidget>
    with SingleTickerProviderStateMixin {
  final tween = Tween<double>(begin: 0.0, end: 1.0);
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(milliseconds: widget.millis),
      vsync: this,
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();

    animation = tween.animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tween.animate(controller),
      builder: (context, _) {
        return Expanded(
          child: CustomPaint(
            painter: PhotonPainter(animation.value),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
