import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


class Animat extends AnimatedWidget {
  static final _op =Tween<double>( begin: 0.1, end: 0.9 );
  static final _size =Tween<double>( begin: 0.0, end: 300 );

  Animat({ Key key, Animation<double> animation })
    :super( key: key, listenable:animation );

  Widget build( BuildContext context ){
    final Animation<double> animation =listenable;
    return Center(
      child: Opacity(
        opacity: _op.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: _size.evaluate(animation),
          width: _size.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
    );
  }
}



class LogoDemo extends StatefulWidget {
  final Widget child;

  LogoDemo({Key key, this.child}) : super(key: key);

  _LogoDemoState createState() => _LogoDemoState();
}

class _LogoDemoState extends State<LogoDemo> with TickerProviderStateMixin {

  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    _animationController =AnimationController(
      duration: Duration(seconds: 2), vsync: this
    );
    _animation =CurvedAnimation( parent: _animationController, curve: Curves.easeInOut );
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("animate"),),
      body: Animat( animation: _animation ),
    );
  }
}


