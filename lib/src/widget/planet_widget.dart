import 'package:flutter/material.dart';

class PlanetWidget extends StatelessWidget {
  final double xOffset;
  final String image;

  const PlanetWidget({Key key, @required this.image, @required bool isLeading})
      : this.xOffset = isLeading ? -0.5 : 0.5,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity(),
      child: Image.asset(
        image,
        width: 60,
        height: 60,
      ),
    );
  }
}
