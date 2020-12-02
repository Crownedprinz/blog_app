import 'package:blog_app/screens/ShowTimer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'ShowCard.dart';
import 'ShowCell.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
