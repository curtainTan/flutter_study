import 'package:flutter/material.dart';



class ScrollDemoPage extends StatefulWidget {
  @override
  _ScrollDemoPageState createState() => _ScrollDemoPageState();
}

class _ScrollDemoPageState extends State<ScrollDemoPage> {

  ScrollController _scrollController = ScrollController();
  var _showBackTap = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener((){

      print( "-----像素数是：------->>>>${_scrollController.position.pixels}" );
      setState(() {
       _showBackTap = _scrollController.position.pixels >= 400 ? true : false ;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Demo"),
      ),
      body: ListView(
        controller: _scrollController,
        children: List.generate(
          40, ( index ) => Container( 
            height: 50.0,
            alignment: Alignment.center,
            child: Text("Item ${ index + 1 }"),
           ) ),
      ),
      floatingActionButton: _showBackTap
      ? FloatingActionButton(
        onPressed: (){ 
          _scrollController.animateTo(0.0, duration: Duration( seconds: 1 ), curve: Curves.decelerate);
        },
        child: Icon( Icons.vertical_align_top ),
      ): null,
    );
  }
}














