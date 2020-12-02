//
//
// import 'package:blog_app/SwitchWidget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class TermsandCondition extends StatefulWidget {
//   TermsandCondition({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _TermsandConditionState createState() => _TermsandConditionState();
// }
//
//
//
// class _TermsandConditionState extends State<TermsandCondition> {
//
//   final switchwidget=SwitchWidget(title: 'Do you agree the terms and conditions');
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             switchwidget,
//             MaterialButton(child: Text('Go Back'),onPressed: (){
//               Navigator.of(context).pop({"didAccept": switchwidget.isOn});
//             })
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
