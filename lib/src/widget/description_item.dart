import 'package:flutter/material.dart';

class DescriptionItem extends StatelessWidget {
  final String _description = """
    App shows light speed via time that light require to accure distance between different solar system objects.  
  """
      .trim();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        _description,
        textAlign: TextAlign.center,
        style: textTheme.headline,
      ),
    );
  }
}
