import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';



class ImageDemo extends StatefulWidget {
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {

  String _storageDir = '/sdcard';

  @override
  void initState() {
    super.initState();
    _getLocalFile();
  }  

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('image的案例'),),
         body: ListView(
           children: <Widget>[
             Text('加载网络图片：'),
             Image.network(
               'http://curtaintan.club/headImg/1549358122065.jpg',
               height: 40,
               width: 40,
             ),
             Text('加载项目中的图片：'),
             Image.asset(
               'images/log.jpg',
               width: 60,
               height: 60,
             ),
             Text('加载手机上的图片:'),
             Image.file(
               File('$_storageDir/2.png'),
               width: 80,
               height: 80,
             ),
             Text('加载相机拍摄的照片:'),
             _image == null ? Text('图片没有选择') : Image.file(_image, width: 200, height: 200,)
           ],
         ),
         floatingActionButton: FloatingActionButton(
           onPressed: getImage,
           child: Icon(Icons.add),
         ),
       ),
    );
  }
    _getLocalFile() async {
      print('------------夏敏是输出的路径-------------');
      String appDir = ( await getApplicationDocumentsDirectory() ).path;
      String tempDir = ( await getTemporaryDirectory() ).path;
      String storage = ( await getExternalStorageDirectory() ).path;
      print('------------夏敏是输出的路径-------------');
      print(storage);
      print(appDir);
      print(tempDir);
      setState(() {
        _storageDir = storage;
      return storage; 
      });
  }

}

