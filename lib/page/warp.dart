import 'package:flutter/material.dart';


class WrapDemo extends StatefulWidget {
  final Widget child;

  WrapDemo({Key key, this.child}) : super(key: key);

  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {


  List<Widget> list;

  Widget buildButton(){
    return GestureDetector(
      onTap: (){
        if( list.length < 9 ){
          setState(() {
          list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.redAccent,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto(){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.amber,
          child: Center(
            child: Text('照片'),
          ),
        ),
    );
  }


  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildButton());
  }


  @override
  Widget build(BuildContext context) {

    final width =MediaQuery.of(context).size.width;
    final h =MediaQuery.of(context).size.height/2;

    return Scaffold(
      appBar: AppBar(title: Text('流式布局'),),
      body: Center(
        child: Opacity(
          opacity: .5,
          child: Container(
            width: width,
            height: h,
            color: Colors.grey[50],
            child: Wrap(
              children: list,
              spacing: 28.0,
            ),
          ),
        ),
      ),
    );
  }
}
