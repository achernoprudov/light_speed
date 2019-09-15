import 'package:flutter/material.dart';
import 'package:light_speed/src/pages/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        
      ),
      home: HomePage(),
    );
  }
}