import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowCell extends StatefulWidget{
  ShowCell({Key key}): super(key:key);

  @override
  ShowCellState  createState()=> ShowCellState();
}

class ShowCellState extends State<ShowCell> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Container(
        height: 100,
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Expanded(flex: 2,child: Image.asset('assets/images/gamePad.jpeg')),
                Expanded(flex: 6,child: Text('Top 10 Techniques',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal, decoration: TextDecoration.none),),
                )
              ],
            ),
          ]
        ),
      ),
      // onTap: (){
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context)=> DetailsPage(show: widget.show,)));
      // },
    );
  }
}