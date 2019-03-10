import 'package:flutter/material.dart';


class KeepBox extends StatefulWidget {
  final Widget child;

  KeepBox({Key key, this.child}) : super(key: key);

  _KeepBoxState createState() => _KeepBoxState();
}

class _KeepBoxState extends State<KeepBox> with SingleTickerProviderStateMixin {

  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =TabController( length: 3, vsync: this );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("keepAlive案例"),
        bottom: TabBar(
          controller: _controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.directions_car),),
            Tab(icon: Icon(Icons.directions_transit),),
            Tab(icon: Icon(Icons.directions_bike),)
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          KeepAlive(),
          KeepAlive(),
          KeepAlive()
        ],
      ),
    );
  }
}


class KeepAlive extends StatefulWidget {
  final Widget child;

  KeepAlive({Key key, this.child}) : super(key: key);

  _KeepAliveState createState() => _KeepAliveState();
}

class _KeepAliveState extends State<KeepAlive> with AutomaticKeepAliveClientMixin {
  int _count = 1;

  @override
  bool get wantKeepAlive => true;

  void _increment(){
    setState(() {
     _count++; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点一次增加一....."),
            Text("$_count", style: Theme.of(context).textTheme.display1,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: "....点一次加一....",
        child: Icon(Icons.add),
      ),
    );
  }
}



