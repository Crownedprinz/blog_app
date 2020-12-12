import 'package:blog_app/screens/StoryPage.dart';
import 'package:blog_app/screens/WelcomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(title: 'Code Clan Blog'),
    );
  }
}