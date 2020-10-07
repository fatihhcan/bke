import 'package:enkahsp/components/theme/color/colors.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  String assetImage = "asset/cupofcoffee.gif";
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: seventhColor,
      body: Center(
        child: Image.asset(assetImage),
      ),
    );
  }
}
