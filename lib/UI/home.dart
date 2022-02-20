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
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          alignment: Alignment.center,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(20.5),
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent.shade100,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(" Total Per Person:"),
                    ],
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color: Colors.blueGrey.shade100,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                          decoration: const InputDecoration(
                              prefixText: "Bill Amount: ",
                              prefixIcon: Icon(Icons.attach_money)),
                          onChanged: (String value) {
                            if (double.tryParse(value) != null) {
                              _billAmount = value as double;
                            } else {
                              _billAmount = 0.0;
                            }
                          }),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
