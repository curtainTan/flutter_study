import 'package:flutter/material.dart';


class SliverDemo extends StatefulWidget {
  final Widget child;

  SliverDemo({Key key, this.child}) : super(key: key);

  _SliverDemoState createState() => _SliverDemoState();
}

class _SliverDemoState extends State<SliverDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.store),
            title: Text("这里是title"),
            actions: <Widget>[
              Icon(Icons.access_alarms),
              Icon(Icons.add),
              Icon(Icons.add_box),
              Icon(Icons.add_circle),
            ],
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("http://curtaintan.club/headImg/1549358122065.jpg", fit: BoxFit.cover,),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 120.0,
            delegate: SliverChildListDelegate(
              [
                Icon( Icons.add_comment ),
                Icon( Icons.add_to_photos ),
                Icon( Icons.accessible ),
                Icon( Icons.add_comment ),
                Icon( Icons.add_to_photos ),
                Icon( Icons.accessible ),
                Icon( Icons.add_comment ),
                Icon( Icons.add_to_photos ),
                Icon( Icons.accessible ),
              ]
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
            ),
            delegate: SliverChildBuilderDelegate(
              ( context, index ){
                return Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text("数据：----$index -----"),
                  )
                );
              },
              childCount: 3
            ),
          ),
        ],
      ),
    );
  }
}

