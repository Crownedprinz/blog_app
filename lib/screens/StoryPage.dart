import 'package:blog_app/screens/ShowTimer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'ShowCard.dart';
import 'ShowCell.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  get handleClick => (String value){
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  };

  getListViewCells(){
    List<Widget> widgets = [];
    widgets.add(ShowCell());
    widgets.add(ShowCell());
    return widgets;
  }
  @override
  Widget build(BuildContext context) {
    Widget _backButton() {
      return InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
              ),
              Text('Back',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: 120),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xff503e9d),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(4),
                      child: Text(
                        'DESIGN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Feather.clock,
                          size: 16,
                          color: Color(0xff9fa0a9),
                        ),
                        SizedBox(width: 9),
                        Text(
                          '50m ago',
                          style: TextStyle(
                              color: Color(0xff9fa0a9), fontSize: 15),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 50.0),
                  child: Text(
                    'How to run a More Effective Meeting',
                    style:
                    TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              ShowCard(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, right: 50.0),
                child: Text("It may seem like an obvious requirement, but a lot of "
                    "meetings start with no clear sense of purpose. The meeting’s "
                    "agenda can be summarized on a handout, written on a whiteboard "
                    "or discussed explicitly at the outset, but everyone should know why"
                    "they’ve gathered and what they’re supposed to be accomplishing. "
                    "The agenda provides a compass for the conversation, so the meeting "
                    "can get back on track if the discussion wanders off course. ",
                  style: TextStyle(fontSize: 14,color: Colors.black,height: 1.8, fontWeight: FontWeight.w400 ),
                ),
              ),
            ],
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed ,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined,color: Color.fromARGB(255, 0, 0, 0)),
              title: new Text('')
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
