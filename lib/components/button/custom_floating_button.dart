import 'package:enkahsp/components/theme/color/colors.dart';
import 'package:flutter/material.dart';

class OptionsButton extends StatefulWidget {
  OptionsButton({Key key}) : super(key: key);

  @override
  _OptionsButtonState createState() => _OptionsButtonState();
}

class _OptionsButtonState extends State<OptionsButton> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      crossAxisSpacing: 7,
      mainAxisSpacing: 30,
      children: [
        FloatingActionButton(
          backgroundColor: secondColor,
          onPressed: () {},
          child: Icon(
            Icons.accessibility_new,
          ),
        ),
        FloatingActionButton(onPressed: () {}),
        FloatingActionButton(onPressed: () {}),
        FloatingActionButton(onPressed: () {}),
      ],
    );
  }
}
