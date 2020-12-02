import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ShowTimer extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: Row(
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
        ),
        SizedBox(width: 15),
        Container(
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Feather.message_circle,
                size: 16,
                color: Color(0xff9fa0a9),
              ),
              SizedBox(width: 9),
              Text(
                '68 comments',
                style: TextStyle(
                    color: Color(0xff9fa0a9), fontSize: 15),
              )
            ],
          ),
        )
      ],
    );
  }
}

