import 'package:flutter/material.dart';


class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('continer组件'),),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(10.0),
              width: 200.0,
              height: 200.0,
              color: Colors.lightBlue,
              child: Text('data'),
            ),
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(10.0),
            child: Text('border'),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all( width: 2.0, color: Colors.pink ),
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20), topRight: Radius.circular(10) )
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(10.0),
            child: Text('渐变色'),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all( width: 2.0, color: Colors.pink ),
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20), topRight: Radius.circular(10) ),
              gradient: LinearGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                  Colors.blue
                ]
              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(10.0),
            child: Text('圆形渐变色'),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all( width: 2.0, color: Colors.pink ),
              boxShadow: [
                BoxShadow( color: Colors.purple, blurRadius: 20.0, spreadRadius: 20 ),
                BoxShadow( color: Colors.teal, blurRadius: 10.0, offset: Offset(10, 10) )
              ],
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20), topRight: Radius.circular(10) ),
              gradient: RadialGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                  Colors.blue
                ]
              )
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(10.0),
            child: Text('圆形渐变色'),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all( width: 2.0, color: Colors.pink ),
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20), topRight: Radius.circular(10) ),
              gradient: RadialGradient(
                colors: [
                  Colors.pink,
                  Colors.red,
                  Colors.orange,
                  Colors.blue
                ]
              )
            ),
          )
        ],
      )
    );
  }
}
