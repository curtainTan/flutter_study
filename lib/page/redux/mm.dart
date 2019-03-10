import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import './store.dart';
import './one.dart';



class ReduxMain extends StatefulWidget {
  final Widget child;

  ReduxMain({Key key, this.child}) : super(key: key);

  _ReduxMainState createState() => _ReduxMainState();
}

class _ReduxMainState extends State<ReduxMain> {

  final store =Store<CountState>( reducer, initialState: CountState.initState() );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: Scaffold(
        appBar: AppBar(title: Text("redux_demo"),),
        body: OnePage(),
      ),
    );
  }
}





