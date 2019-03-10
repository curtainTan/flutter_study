import 'package:flutter/material.dart';



class DropDemo extends StatefulWidget {
  final Widget child;

  DropDemo({Key key, this.child}) : super(key: key);

  _DropDemoState createState() => _DropDemoState();
}

class _DropDemoState extends State<DropDemo> {
  
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            })
            .toList(),
        ),
      ),
    );
  }
}

