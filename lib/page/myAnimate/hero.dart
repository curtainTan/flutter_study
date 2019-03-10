import 'package:flutter/material.dart';



class HeroDemo extends StatefulWidget {
  final Widget child;

  HeroDemo({Key key, this.child}) : super(key: key);

  _HeroDemoState createState() => _HeroDemoState();
}

class _HeroDemoState extends State<HeroDemo> {

  Hero _sourceHero = Hero(
    tag: "HeroTag",
    child: Container(
      height: 100,
      width: 100,
      color: Colors.lightBlue,
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hero动画"),),
      body: Center(
        child: GestureDetector(
          child: _sourceHero,
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: ( BuildContext context ){
                return TwoPage();
              })
            );
          },
        ),
      ),
    );
  }
}


class TwoPage extends StatefulWidget {
  final Widget child;

  TwoPage({Key key, this.child}) : super(key: key);

  _TwoPageState createState() => _TwoPageState();
}

class _TwoPageState extends State<TwoPage> {

  Hero _destination = Hero(
    tag: "HeroTag",
    child: Container(
      height: 200,
      width: 100,
      color: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二页"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: _destination,
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
