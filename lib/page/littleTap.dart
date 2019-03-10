import 'package:flutter/material.dart';



class SomeDemo extends StatefulWidget {
  final Widget child;

  SomeDemo({Key key, this.child}) : super(key: key);

  _SomeDemoState createState() => _SomeDemoState();
}

class _SomeDemoState extends State<SomeDemo> {

  SnackBar Snack(){
    return SnackBar(
      content: Text("这里是Snackbar"),
      duration: Duration(seconds: 2),
    );
  }

  Widget MyDialog(){
    return AlertDialog(
      title: Text("这里是title"),
      content: Text("这里是context"),
      actions: <Widget>[
        Text("action1"),
        Text("action2"),
        Text("action3")
      ],
    );
  }

  Widget MySimple(){
    return SimpleDialog(
      title: Text("title"),
      children: <Widget>[
        Container(
          height: 200,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Text("顶部"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              SizedBox(height: 180,),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("底部"),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("交互测试"),),
      body: Builder(builder: ( BuildContext context ){
        return Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("点击展示Snackbar"),
                onPressed: (){

                  Scaffold.of(context).showSnackBar( Snack() );
                },
              ),
              SizedBox( height: 20, ),
              RaisedButton(
                child: Text("点击展示Dialog"),
                onPressed: (){
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    // child: MyDialog()
                    // // Text("这里是dialog的chiden"),
                    builder: ( BuildContext context ){
                      return MyDialog();
                    }
                  );
                },
              ),
              SizedBox( height: 20, ),
              RaisedButton(
                child: Text("点击展示simpleDialog"),
                onPressed: (){
                  showDialog(
                    barrierDismissible: true,
                    context: context,
                    // child: MyDialog()
                    // // Text("这里是dialog的chiden"),
                    builder: ( BuildContext context ){
                      return MySimple();
                    }
                  );
                },
              ),
              SizedBox( height: 20, ),
              RaisedButton(
                child: Text("点击showBottomSheet"),
                onPressed: (){
                   showModalBottomSheet(
                    context: context,
                    builder: ( BuildContext context ){
                      return Container(
                        height: 200,
                        width: 200,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          children: <Widget>[
                            Text("数据"),
                            Text("数据"),
                            Text("数据"),
                            SizedBox(height: 180,),
                            Text("数据"),
                          ],
                        )
                      );
                    }
                  )
                  .then((onValue){
                    print("object");
                  })
                  .whenComplete( (){
                    print("whenComplete");
                  });
                }
              ),
            ],
          )
        );
      })
    );
  }
}




