import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './store.dart';
import './two.dart';

class OnePage extends StatefulWidget {
  final Widget child;

  OnePage({Key key, this.child}) : super(key: key);

  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StoreConnector<CountState, int>(
          converter: (store) => store.state.count ,
          builder: ( context, count ){
            return Text(
              count.toString(),
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push( MaterialPageRoute(
            builder: ( BuildContext context ){
              return UnderScreen();
            }
          ) );
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}






