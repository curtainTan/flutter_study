import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';



class RxDemo extends StatelessWidget {
  final Widget child;

  RxDemo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RxDart  Demo"),),
      body: RxDemoHome()
    );
  }
}



class RxDemoHome extends StatefulWidget {
  final Widget child;

  RxDemoHome({Key key, this.child}) : super(key: key);

  _RxDemoHomeState createState() => _RxDemoHomeState();
}

class _RxDemoHomeState extends State<RxDemoHome> {

  @override
  void initState() {
    super.initState();

    Observable<String> _observable = 
      Observable( Stream.fromIterable(['hello', 'word']) );

    _observable.listen(print);

  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}



