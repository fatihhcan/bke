import 'package:enkahsp/views/home_view.dart';
import 'package:enkahsp/views/mass_body_index_view.dart';
import 'package:enkahsp/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: SplashView());
  }
}
