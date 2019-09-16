import 'package:flutter/material.dart';
import 'package:light_speed/src/models/light_item.dart';
import 'package:light_speed/src/widget/photon_widget.dart';

class HomeListItem extends StatelessWidget {
  final LightItem lightItem;

  const HomeListItem({Key key, this.lightItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 30,
          height: 30,
          color: Colors.blueAccent,
        ),
        PhotonWidget(
          millis: 2000,
        ),
        Container(
          width: 30,
          height: 30,
          color: Colors.redAccent,
        )
      ],
    );
  }
}
