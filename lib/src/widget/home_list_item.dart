import 'package:flutter/material.dart';
import 'package:light_speed/src/models/light_item.dart';
import 'package:light_speed/src/widget/photon_widget.dart';
import 'package:light_speed/src/widget/planet_widget.dart';

class HomeListItem extends StatelessWidget {
  final LightItem lightItem;

  const HomeListItem({Key key, this.lightItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(13),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Column(
        children: <Widget>[
          _ItemContent(lightItem: lightItem),
          _ObjectsTitles(lightItem: lightItem),
        ],
      ),
    );
  }
}

class _ItemContent extends StatelessWidget {
  final LightItem lightItem;

  const _ItemContent({Key key, this.lightItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class _ObjectsTitles extends StatelessWidget {
  final LightItem lightItem;

  const _ObjectsTitles({Key key, @required this.lightItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(lightItem.leadingTitle),
          Text(lightItem.trailingTitle)
        ],
      ),
    );
  }
}
