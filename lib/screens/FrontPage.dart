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
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 50.0),
                  child: Text('How to run a More Effective Meeting',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),)
              ),
              SizedBox(height: 10,),
              Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.timer, size: 14),
                      ),
                      TextSpan(
                        text: "58m ago",
                          style: TextStyle(color: Colors.black)
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.add_comment_rounded, size: 14),
                      ),
                      TextSpan(
                          text: "68 comments",
                          style: TextStyle(color: Colors.black)
                      ),
                    ],
                  ),
                ),
              ],
              ),
              Column(
              children: [
                Row(
                  children: [
                    Text("Popular"),
                    Text("Show all")
                  ],
                ),
                ShowCell()
              ],
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
