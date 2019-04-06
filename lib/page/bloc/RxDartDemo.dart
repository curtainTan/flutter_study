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

    // Observable<String> _observable = 
      // Observable( Stream.fromIterable(['hello', 'word']) );
      // Observable.fromFuture( Future.value('hello ~~~') );
      // Observable.fromIterable(["hello ", "你好...."]);
      // Observable.just("hello ~~~~");
    //   Observable.periodic( Duration( seconds: 2 ), (x) => x.toString() );

    // _observable.listen(print);

    PublishSubject<String> _subject =PublishSubject<String>();

    _subject.listen( (data) => print( 'listen 1: $data' ) );

    _subject.add("hello ...");
    _subject.listen( (data) => print( 'listen 2: $data' ) );


    _subject.close();

  }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: widget.child,
    );
  }
}



