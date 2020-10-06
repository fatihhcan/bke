import 'package:curved_drawer/curved_drawer.dart';
import 'package:enkahsp/components/button/custom_floating_button.dart';
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
        body: Container(
          child: OptionsButton(),
        ),
      ),
    );
  }
}
