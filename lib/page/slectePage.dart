import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:multi_image_picker/asset.dart';
import 'dart:async';
import 'package:flutter/services.dart';


import 'package:redux_demo/conponent/oneImage.dart';

class SelectPage extends StatefulWidget {
  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {

  List<Asset> images = List<Asset>();
  String _err = "qweww";
  int count = 8;

  @override
  void initState() {
    super.initState();
  }

  Future<void> loadAsset() async {
    setState(() {
     images = List<Asset>(); 
    });
    List<Asset> res;
    String err;
    try{
      res = await MultiImagePicker.pickImages(
        maxImages: this.count
      );
    } on PlatformException catch( e ){
      err = e.message;
    }
    
    setState(() {
     images = res;
     if( err == null ) _err = "no err";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Column(
        children: <Widget>[
          Text('你只能选择${this.count}张图片.......'),
          Text('err提示： ${this._err}'),
          Expanded(
            child: ListView.builder(
              itemCount: this.images.length,
              itemBuilder: ( context, index ){
                return OneImage( index, this.images[index] );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: loadAsset,
      ),
    );
  }
}


