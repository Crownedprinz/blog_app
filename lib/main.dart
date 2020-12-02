import 'package:flutter/material.dart';
import 'screens/FrontPage.dart';
import 'screens/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FrontPage(title: 'Code Clan Blog'),
    );
  }
}