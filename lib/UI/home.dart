import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bill_Splitter extends StatefulWidget {
  const Bill_Splitter({Key? key}) : super(key: key);

  @override
  _Bill_SplitterState createState() => _Bill_SplitterState();
}

class _Bill_SplitterState extends State<Bill_Splitter> {
  int _personCounter = 1;
  double _billAmount = 0.0;
  int _tipPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bill_Tip_Calculator",
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 122.0),
          alignment: Alignment.center,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(20.5),
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
