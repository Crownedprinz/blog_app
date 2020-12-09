import 'package:blog_app/screens/StoryPage.dart';
import 'package:blog_app/screens/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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