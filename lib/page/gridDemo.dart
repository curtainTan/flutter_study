import 'package:flutter/material.dart';


class GridDemo extends StatefulWidget {
  _GridDemoState createState() => _GridDemoState();
}

class _GridDemoState extends State<GridDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('网格布局'),),
      body: Container(
        child: GridView.count(
          padding: EdgeInsets.all(20.0),
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          children: <Widget>[
            Text("你好"),
            Text("你好111111"),
            Text("你好222222222"),
            Text("你好33333333"),
            Text("你好444444"),
            Text("你好555555"),
            Text("你好6666"),
            Text("你好7777777"),
          ],
        )
      ),
    );
  }
}


