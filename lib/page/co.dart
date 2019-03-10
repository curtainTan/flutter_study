import 'package:flutter/material.dart';



class CloseOpen extends StatefulWidget {
  final Widget child;

  CloseOpen({Key key, this.child}) : super(key: key);

  _CloseOpenState createState() => _CloseOpenState();
}

class _CloseOpenState extends State<CloseOpen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('打开闭合案例'),),
      body: Center(
        child: ExpansionTile(
          title:Text('Expansion Tile'),
          leading:Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title:Text('list tile'),
              subtitle:Text('subtitle')
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}



