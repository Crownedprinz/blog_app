import 'package:blog_app/screens/ShowTimer.dart';
import 'package:blog_app/screens/StoryPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

import 'ShowCard.dart';
import 'ShowCell.dart';

class FrontPage extends StatefulWidget {
  FrontPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {

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

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.blue, // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/images/Ghost.jpg'),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                          PopupMenuButton<String>(
                            onSelected: handleClick,
                            itemBuilder: (BuildContext context) {
                              return {'Logout', 'Settings'}.map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: Text(choice),
                                );
                              }).toList();
                            },
                          ),
                        ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ShowCard(),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30, right: 50.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPage()),
                      );
                    },
                    child: new Container(
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'How to run a More Effective Meeting',
                            style:
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
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
                      height: 240,
                      child: ListView(children:  getListViewCells()),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
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
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
