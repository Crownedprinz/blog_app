import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'ShowTimer.dart';

class ShowCell extends StatefulWidget {
  ShowCell({Key key}) : super(key: key);

  @override
  ShowCellState createState() => ShowCellState();
}

class ShowCellState extends State<ShowCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.pink,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: 80,
              width: 80,
              // decoration: BoxDecoration(),
              // color: Colors.black,
              child:
              Image.asset('assets/images/gamePad.jpeg', fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'Top 10 Techniques to get rid of clustters in design system',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                ShowTimer()
              ],
            ),
          )
        ],
      ),
    );

  }
}
