import 'package:flutter/material.dart';


class RC extends StatefulWidget {
  _RCState createState() => _RCState();
}

class _RCState extends State<RC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row and Column'),),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('类型参考前端felx')
            ],
          )
        ],
      ),
    );
  }
}

