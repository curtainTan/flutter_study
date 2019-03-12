import 'package:flutter/material.dart';
import 'page/scaffold-demo.dart';
import 'page/image-text.dart';
import 'page/image.dart';
import 'page/slectePage.dart';
import 'page/container.dart';
import 'page/rowandcolumn.dart';
import 'page/gridDemo.dart';
import 'page/button.dart';
import 'page/keepalive.dart';
import 'page/warp.dart';
import 'page/co.dart';
import 'page/pull.dart';
import 'page/inputDemo.dart';
import 'page/animate.dart';
import 'page/inputDemot.dart';
import 'page/DropdownButto.dart';
import 'page/myAnimate/container.dart';
import 'page/myAnimate/animete1.dart';
import 'page/littleTap.dart';
import 'page/myAnimate/hero.dart';
import 'page/myAnimate/hero1.dart';
import 'page/shared.dart';
import 'page/redux/one.dart';
import 'page/mysliver.dart';
import 'page/bloc/blocDemo.dart';
import 'page/bloc/RxDartDemo.dart';


class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('一天一个flutter组件'),),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ListTile(
            title: Text('Scaffold'),
            trailing: Text('first'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MyScanffold()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Text'),
            trailing: Text('第二天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => IT()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Image'),
            trailing: Text('第三天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ImageDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Image'),
            trailing: Text('第四天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SelectPage()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Container'),
            trailing: Text('第五天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ContainerDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Row & Colum'),
            trailing: Text('第六天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => RC()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('Grid网格布局'),
            trailing: Text('第六天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => GridDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('botton'),
            trailing: Text('第六天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ButtonDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('保持页面状态'),
            trailing: Text('第七天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => KeepBox()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('流式布局Wrap'),
            trailing: Text('第七天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => WrapDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('闭合展开'),
            trailing: Text('第七天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => CloseOpen()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('输入框'),
            trailing: Text('第七天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => MyInput()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('下拉刷新&上拉加载'),
            trailing: Text('第八天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => PullDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('[输入框]'),
            trailing: Text('第八天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => TextFieldFocusDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('[动画]'),
            trailing: Text('第八天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('[DropdownButton]'),
            trailing: Text('第九天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DropDemo()
              ));
            },
          ),
          Divider( color: Colors.purple, ),
          ListTile(
            title: Text('[AnimateContainer]'),
            trailing: Text('第九天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ContainerAdemo()
              ));
            },
          ),
          ListTile(
            title: Text('[继续Animate]'),
            trailing: Text('第十天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => LogoDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[交互]'),
            trailing: Text('第十天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SomeDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[hero动画1]'),
            trailing: Text('第十天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HeroDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[hero动画2]'),
            trailing: Text('第十天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SourceHeroPage()
              ));
            },
          ),
          ListTile(
            title: Text('[数据存储]'),
            trailing: Text('第十一天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SharedDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[redux_demo]'),
            trailing: Text('第十二天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => OnePage()
              ));
            },
          ),
          ListTile(
            title: Text('[sliver]'),
            trailing: Text('第十三天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SliverDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[Bloc]'),
            trailing: Text('第十四天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => BlocDemo()
              ));
            },
          ),
          ListTile(
            title: Text('[RxDart Demo]'),
            trailing: Text('第十四天'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => RxDemoHome()
              ));
            },
          ),
        ],
      ),
    );
  }
}




