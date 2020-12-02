import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ShowTimer.dart';

class ShowCell extends StatefulWidget {
  ShowCell({Key key}) : super(key: key);

  @override
  ShowCellState createState() => ShowCellState();
}

class ShowCellState extends State<ShowCell> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Image.asset('assets/images/gamePad.jpeg')),
        SizedBox(
          width: 20,
        ),
        Expanded(
            flex: 6,
            child: Column(
              children: [
                // new TextField(
                //   textAlign: TextAlign.center,
                //   decoration: new InputDecoration(
                //       border: new OutlineInputBorder(
                //         borderRadius: const BorderRadius.all(
                //           const Radius.circular(10.0),
                //         ),
                //       ),
                //       filled: true,
                //       hintStyle: new TextStyle(color: Colors.white),
                //       hintText: "DESIGN",
                //       fillColor: Colors.deepPurple),
                // ),
                Text(
                  'Top 10 techniques to get rid of clutters in design system',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
                ShowTimer(),
              ],
            ))
      ],
    );
  }
}
