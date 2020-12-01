import 'package:blog_app/screens/ShowTimer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShowCard.dart';
import 'ShowCell.dart';

class FrontPage extends StatefulWidget {
  FrontPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowCard(),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 50.0),
                  child: Text(
                    'How to run a More Effective Meeting',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 50.0),
                child: ShowTimer(),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 50.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Text(
                          "Show all",
                          style:
                              TextStyle(color: Color(0xFFFE7A37), fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 100,
                      child: ListView(children: <Widget>[ShowCell()]),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
