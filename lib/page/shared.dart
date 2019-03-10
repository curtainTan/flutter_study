import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SharedDemo extends StatefulWidget {
  final Widget child;

  SharedDemo({Key key, this.child}) : super(key: key);

  _SharedDemoState createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {

  TextEditingController _nameController, _strController;

  List<String> allLists = List();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _strController = TextEditingController();
    allLists..add("111");
  }

  void setItem() async {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    String ss =_nameController.text;
    String val =_strController.text;
    preferences.setString(ss, val);
    setState(() {
     allLists..add("已经设置字段$ss : $val"); 
    });
  }

  void readSh() async {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    String ss =_nameController.text;
    String val = preferences.get( ss );
    print("获取到的数据$ss ：");
    print(val);
    setState(() {
     allLists..add("读到字段$ss ： $val"); 
    });
  }

  void del() async {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    String ss =_nameController.text;
    preferences.remove(ss);
    print("已经删除");
    setState(() {
     allLists..add("已经删除$ss 字段"); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("数据存储demo"),),
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "name",
                  icon: Icon(Icons.adjust)
                ),
              ),
              TextField(
                controller: _strController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "存储内容",
                  icon: Icon(Icons.polymer)
                ),
              ),
              SizedBox(height: 30,),
              RaisedButton(
                child: Text("设置数据"),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  setItem();
                },
              ),
              SizedBox(height: 10,),
              RaisedButton(
                child: Text("获取数据"),
                color: Colors.lightBlue,
                textColor: Colors.white,
                onPressed: (){
                  readSh();
                },
              ),
              SizedBox(height: 10,),
              RaisedButton(
                child: Text("删除数据"),
                color: Colors.red,
                textColor: Colors.white,
                onPressed: (){
                  del();
                },
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.all(30),
                color: Colors.purple,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: allLists.length,
                  itemBuilder: ( context, index ){
                    return Text("这里是第$index 条数据${ allLists[index] }");
                  },
                ),
              )
            ],
          ),
      )
    );
  }
}








