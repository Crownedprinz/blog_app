import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right:10.0),
      child: Container(
          height: 200,
          width: 400,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              'assets/images/undraw_quitting_time_dm8t.png',
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
        ),
    );
  }
}

