import 'package:flutter/material.dart';

class IT extends StatefulWidget {
  _ITState createState() => _ITState();
}

class _ITState extends State<IT> {
  @override
  Widget build(BuildContext context) {

    var paint = new Paint();
    paint.color = Color(0xFF00FF00);

    var shadowList = [
      new Shadow(color: Color(0xFFFF0000), offset: Offset(3, 3), blurRadius: 3)
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Image和Text'),),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Text('inherit=false:'),
                Text(
                  'inherit=false',
                  style: TextStyle(inherit: true),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text('字体颜色:'),
              Text(
                '字体颜色是红色',
                style: TextStyle(color: Color(0xFFFF0000)),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('字体大小：'),
              Text('默认字体大小'),
              Text('字体大小为30', style: TextStyle(fontSize: 30),)
            ],
          ),
          Row(
            children: <Widget>[
              Text('字体粗细：'),
              Text('粗体', style: TextStyle( fontWeight: FontWeight.bold ),)
            ],
          ),
          Row(
            children: <Widget>[
              Text('字体:'),
              Text(
                '字体-默认',
              ),
              Text(
                '字体-italic',
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('单词间距：'),
              Text(
                '单词间距：-5， hello word',
                style: TextStyle( wordSpacing: -5 ),
              ),
              Text(
                '单词间距：5， hello word',
                style: TextStyle( wordSpacing: 5 ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('foreground:'),
              Text('Pain 设置为绿色：', style: TextStyle(foreground: paint),)
            ],
          ),
          Row(
            children: <Widget>[
              Text('background:'),
              Text(
                '背景设置为绿色',
                style: TextStyle( background: paint ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('阴影：'),
              Text(
                '背景阴影shadowList',
                style: TextStyle(
                  shadows: shadowList,
                  color: Colors.lightBlue,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('文字下划线：'),
              Text(
                '下划线',
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.orange
                ),
              ),
              Text(
                '上划线',
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dotted,
                  decorationColor: Colors.orange
                ),
              ),
              Text(
                '中划线',
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Colors.orange
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('文字对齐方式：'),
              Expanded(
                child: Text(
                  '左对齐',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('文字对齐方式：'),
              Expanded(
                child: Text(
                  '左对齐',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Color(0xFF42A5F5)),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text('文字方向'),
              Container(
                width: 200,
                height: 50,
                color: Colors.orange,
                child: Text(
                  'hello word \n dfsafdafafsasfs',
                  textDirection: TextDirection.rtl,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text('semanticsLabel:'),
              Container(
                width: 200,
                height: 50,
                color: Color(0xFF00FF00),
                child: Text(
                  r'$$  Double dollars $$',
                  semanticsLabel: 'Double dollars'
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text.rich(
                TextSpan(
                  text: 'hello',
                  style: TextStyle(color: Colors.pink),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'aaaaaaaaaa',
                      style: TextStyle(color: Colors.lightBlueAccent)
                    ),
                    TextSpan(
                      text: 'bbbbbbbbbbbbbbbbbbb',
                      style: TextStyle(color: Colors.orange)
                    )
                  ]
                )
              )
            ],
          ),
        ],
      )
    );
  }
}



