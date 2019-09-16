import 'package:flutter/material.dart';
import 'package:light_speed/src/utils/items.dart';
import 'package:light_speed/src/widget/description_item.dart';
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
              itemCount: lightItems.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return DescriptionItem();
                }
                var itemIndex = index - 1;
                var item = lightItems[itemIndex];
                return HomeListItem(lightItem: item);
              }),
        ));
  }
}
