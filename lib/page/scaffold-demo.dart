import 'package:flutter/material.dart';


class MyScanffold extends StatefulWidget {
  _MyScanffoldState createState() => _MyScanffoldState();
}

class _MyScanffoldState extends State<MyScanffold> {

  int selectIndex = 1;
  List<Widget> listPage = List();

  @override
  void initState() {
    super.initState();
    this.listPage..add( Pages('Home') )
    ..add( Pages('第二页'))
    ..add( Pages('第三页。。。。。') )
    ..add( Pages('values') );
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold案例'),
        // leading: Icon(Icons.near_me),
        flexibleSpace: Text('这里是flexibleSpace'),
        brightness: Brightness.light,
        actions: <Widget>[
          Icon(Icons.more),
          Icon(Icons.mouse),
          Icon(Icons.nature),
          Icon(Icons.music_video),
        ],
       bottom: PreferredSize(
         child: Row(
           children: <Widget>[
             Icon(Icons.more),
             Icon(Icons.mouse),
             Icon(Icons.nature),
           ],
         ),
       )
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('http://curtaintan.club/headImg/1549358122065.jpg'),
                ),
              ),
            ),
            ListTile(
              title: Text('Person'),
            ),
            ListTile(
              title: Text('data'),
            )
          ],
        )
      ),
      persistentFooterButtons: <Widget>[
        Icon(Icons.add),
        Icon(Icons.add_call),
        Icon(Icons.add_to_photos)
      ],
      // bottomSheet: Text('这里是bottomSheet'),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        fixedColor: Colors.lightBlue,
        onTap: ( int index ){
          setState(() {
           selectIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('主页'),
            backgroundColor: Colors.lightGreen,
            activeIcon: Icon(Icons.hot_tub, color: Colors.limeAccent,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            title: Text('文章'),
            backgroundColor: Colors.lightGreen,
            activeIcon: Icon(Icons.hot_tub, color: Colors.limeAccent,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.memory),
            title: Text('我的'),
            backgroundColor: Colors.lightGreen,
            activeIcon: Icon(Icons.hot_tub, color: Colors.limeAccent,),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.lightGreen,
            icon: Icon(Icons.memory),
            title: Text('aa'),
            activeIcon: Icon(Icons.hot_tub, color: Colors.limeAccent,),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute( builder: (context) => Tan()));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: listPage[selectIndex],
    );
  }
}


class Pages extends StatelessWidget {

  String values;
  Pages( this.values );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text( this.values ),
    );
  }
}



class Tan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('另一种bottomBar效果'),),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Image.network(
          'https://img-blog.csdnimg.cn/20181212214012873.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L21lbmdrczE5ODc=,size_16,color_FFFFFF,t_70',
          fit: BoxFit.fitHeight,
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.orange,
              onPressed: (){
              },
            ),
            IconButton(
              icon: Icon(Icons.inbox),
              color: Colors.red,
              onPressed: (){
                }
            ),
          ],
        ),
      ),
    );
  }
}


