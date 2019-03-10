import 'package:flutter/material.dart';




class PullDemo extends StatefulWidget {
  final Widget child;

  PullDemo({Key key, this.child}) : super(key: key);

  _PullDemoState createState() => _PullDemoState();
}

class _PullDemoState extends State<PullDemo> {

  List<Widget> items = List();
  ScrollController _scrollController =ScrollController();
  bool isPerformingRequest = false;

  var position = 4;
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < position; i++) {
      items..add( buildItem( i ) );
    }
    _scrollController.addListener(() async {
      if( _scrollController.position.pixels ==_scrollController.position.maxScrollExtent ){
        print( "长度为${items.length}" );
        setState(() {
          isPerformingRequest = true; 
        });
        await Future.delayed(Duration(seconds: 2));
        setState(() {
          isPerformingRequest =false; 
        });
      }
    });
  }

  Widget buildItem ( int i ){
    return ListTile(
      title: Text("这是第$i 条数据: "),
    );
  }

  Future<Null> _loadRefresh() async {
    await Future.delayed( Duration( seconds: 2 ), (){
      setState(() {
        for (var i = 0; i < 10; i++) {
          items..add( buildItem( i ) );
        }
      });
      return null;
    } );
  }

  Widget _buildProgressIndicator() {
    return new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Opacity(
          opacity: isPerformingRequest ? 1.0 : 0.0,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              RefreshProgressIndicator(
                backgroundColor: Colors.purple,
                valueColor: AlwaysStoppedAnimation( Colors.red )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: new Text('正在加载中...'))
            ],
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("上拉加载，下拉刷新"),
      ),
      body: RefreshIndicator(
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: items.length + 1 ,
          itemBuilder: ( context, index ){
            if( index ==items.length ){
              return _buildProgressIndicator();
            }else{
              return buildItem( index );
            }
          },
          controller: _scrollController,
        ),
        displacement: 20.0,
        onRefresh: _loadRefresh,
        color: Colors.red,
        backgroundColor: Colors.white,
      ),
    );
  }
}


