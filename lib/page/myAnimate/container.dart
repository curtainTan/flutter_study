





import 'package:flutter/material.dart';



class ContainerAdemo extends StatefulWidget {
  final Widget child;

  ContainerAdemo({Key key, this.child}) : super(key: key);

  _ContainerAdemoState createState() => _ContainerAdemoState();
}

class _ContainerAdemoState extends State<ContainerAdemo> with SingleTickerProviderStateMixin {

  double _value = 255.0;
  bool _first = true;
  double _op = 0.2;
  AnimationController _animatedContainer;

  @override
  void initState() {
    _animatedContainer =AnimationController(duration: Duration(seconds: 2), vsync: this);
    super.initState();
  }

  void _changeValue(){
    setState(() {
     _value = _value == 255.0 ? 80.0 : 255.0;
    });
  }

  void _changeValue2(){
    setState(() {
     _first =_first ? false : true; 
    });
  }

  void _changeValue3(){
    setState(() {
      _op =_op == 0.2 ? 0.8 : 0.2; 
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate-Container-Demo"),
      ),
      body: ListView(
        children:<Widget>[
          GestureDetector(
            onTap: _changeValue,
            child: AnimatedContainer(
              duration: Duration( seconds: 2 ),
              curve: Curves.decelerate,
              width: _value,
              height: _value,
              child: FlutterLogo(),
            ),
          ),
          Text("这里是---------断行---"),
          Divider( color: Colors.purple, ),
          GestureDetector(
            onTap: _changeValue2,
            child: AnimatedCrossFade(
              duration: const Duration(seconds: 2),
              firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 200.0),
              secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 200.0),
              crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            )
          ),
          Divider( color: Colors.purple, ),
          GestureDetector(
            onTap: _changeValue3,
            child: AnimatedOpacity(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              opacity: _op,
              child: Image.network(
               'http://curtaintan.club/headImg/1549358122065.jpg',
               height: 40,
               width: 40,
             ),
            )
          ),
        ]
      ),
    );
  }
}












