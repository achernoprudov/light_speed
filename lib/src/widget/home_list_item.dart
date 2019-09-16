import 'package:flutter/material.dart';
import 'package:light_speed/src/models/light_item.dart';
import 'package:light_speed/src/widget/photon_widget.dart';
import 'package:light_speed/src/widget/planet_widget.dart';

class HomeListItem extends StatelessWidget {
  final LightItem lightItem;

  const HomeListItem({Key key, this.lightItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            PlanetWidget(
              image: lightItem.leadingImage,
              isLeading: true,
            ),
            PhotonWidget(
              millis: lightItem.durationMills,
            ),
            PlanetWidget(
              image: lightItem.trailingImage,
              isLeading: false,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(lightItem.leadingTitle),
              Text(lightItem.trailingTitle)
            ],
          ),
        )
      ],
    );
  }
}
