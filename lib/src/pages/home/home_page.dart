import 'package:flutter/material.dart';
import 'package:light_speed/src/models/light_item.dart';
import 'package:light_speed/src/widget/home_list_item.dart';

class HomePage extends StatelessWidget {
  final List<LightItem> items = [
    LightItem("Earth", "", "Moon", "", 1600),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Light speed'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];
                return HomeListItem(
                  lightItem: item,
                );
              }),
        ));
  }
}
