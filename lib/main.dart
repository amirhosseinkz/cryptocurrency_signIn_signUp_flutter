import 'package:flutter/material.dart';
import 'package:leo_coin/ui/screens/home.dart';
import 'package:leo_coin/ui/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}