import 'package:enkahsp/views/home_view.dart';
import 'package:enkahsp/views/splash_view.dart';
import 'package:flutter/material.dart';

class Router extends StatefulWidget {
  Router({Key key}) : super(key: key);

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/home': (context) => HomeView(),
      },
    );
  }
}
