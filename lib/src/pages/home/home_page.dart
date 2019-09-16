import 'package:flutter/material.dart';
import 'package:light_speed/src/utils/items.dart';
import 'package:light_speed/src/widget/home_list_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Light speed'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: lightItems.length,
              itemBuilder: (context, index) {
                var item = lightItems[index];
                return HomeListItem(lightItem: item);
              }),
        ));
  }
}
