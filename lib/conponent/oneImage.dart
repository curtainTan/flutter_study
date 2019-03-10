import 'package:flutter/material.dart';
import 'package:multi_image_picker/asset.dart';

class OneImage extends StatefulWidget {

  final int _index;
  final Asset _asset;
  OneImage( this._index, this._asset );

  _OneImageState createState() => _OneImageState(this._index, this._asset);
}

class _OneImageState extends State<OneImage> {

  int _index = 0;
  Asset _asset;
  _OneImageState( this._index, this._asset );

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  _loadImage() async {
    await this._asset.requestThumbnail(200, 200);

    if( this.mounted ){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if( null != this._asset.thumbData ){
      return Column(
        children: <Widget>[
          Text('---${this._index+1}张照片---'),
          Image.memory(
            this._asset.thumbData.buffer.asUint8List(),
          ),
        ],
      );
    }
  }
}



