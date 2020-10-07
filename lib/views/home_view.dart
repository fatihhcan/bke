import 'package:enkahsp/components/button/custom_floating_button.dart';
import 'package:enkahsp/components/theme/color/colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: fourthColor,
        body: Container(
            padding: EdgeInsets.only(top: 260), child: OptionsButton()),
      ),
    );
  }
}
