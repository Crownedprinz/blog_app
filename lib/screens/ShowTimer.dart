import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowTimer extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.timer, size: 14),
              ),
              TextSpan(
                  text: "58m ago",
                  style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        SizedBox(width: 15,),
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.add_comment_rounded, size: 14),
              ),
              TextSpan(
                  text: "68 comments",
                  style: TextStyle(color: Colors.black,)),
            ],
          ),
        ),
      ],
    );
  }
}

