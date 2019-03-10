import 'package:flutter/material.dart';




class MyInput extends StatefulWidget {
  final Widget child;

  MyInput({Key key, this.child}) : super(key: key);

  _MyInputState createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {

  TextEditingController _namecontroller, _pswController;
  FocusNode _nameFocus,_pwFocus;

  @override
  void initState() {
    _namecontroller =TextEditingController();
    _pswController =TextEditingController();
    _nameFocus = FocusNode();
    _pwFocus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("输入框demo"),),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 40,),
            TextField(
              controller: _namecontroller,
              decoration: InputDecoration(
                labelText: "name"
              ),
            ),
            TextField(
              controller: _pswController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password"
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    print("${_pswController.text}");
                  },
                  child: Text("点一下"),
                  color: Colors.purple,
                )
              ],
            ),
            Text("keyboardType: TextInputType.number"),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "请输入数字。。"
              ),
            ),
            Text("keyboardType: TextInputType.phone"),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "请输入数字。。"
              ),
            ),
            Text("keyboardType: TextInputType.multiline"),
            TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: "请输入数字。。"
              ),
            ),
            Text("keyboardType: TextInputType.multiline"),
            TextField(
              decoration: InputDecoration(
                labelText: "请输入数字。。",
                hintText: "hintText",
                prefixIcon: Icon(Icons.polymer),
                prefixText: "prefixText",
                suffixIcon: Icon(Icons.power),
                suffixText: "suffixText",
                border: OutlineInputBorder()
              ),
            )
          ],
        ),
      )
    );
  }
}



