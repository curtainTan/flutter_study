import 'package:flutter/material.dart';


class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('button'),),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: (){},
            child: Text('data按钮'),
            textTheme: ButtonTextTheme.accent
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('data按钮'),
            textTheme: ButtonTextTheme.accent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('data按钮'),
            textTheme: ButtonTextTheme.accent,
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              side: BorderSide( color: Colors.brown, width: 3.0 )
            ),
          ),
          RaisedButton(
            onPressed: (){},
            child: Text('data按钮'),
            textTheme: ButtonTextTheme.accent,
            shape: RoundedRectangleBorder(),
          ),
          FlatButton(
            onPressed: (){},
            child: Text('无边框的按钮'),
          ),
          OutlineButton(
            onPressed: (){},
            child: Text("外边框按钮"),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 4.0
            ),
          ),
          ButtonBar(
            children: <Widget>[
              RaisedButton(
                onPressed: (){},
                child: Text("ButtonBar"),
              ),
              RaisedButton(
                onPressed: (){},
                child: Text("ButtonBar"),
              ),
              RaisedButton(
                onPressed: (){},
                child: Text("ButtonBar"),
              )
            ],
          )
        ],
      ),
    );
  }
}


