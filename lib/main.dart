import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'myhome.dart';
import 'page/redux/store.dart';



void main() {
  final store =
      Store<CountState>(reducer, initialState: CountState.initState());
  runApp(new MyApp(store));
}


class MyApp extends StatelessWidget {

  final Store<CountState> store;
  MyApp(this.store);

 @override
 Widget build( BuildContext context ){
   return StoreProvider<CountState>(
     store: store,
     child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyHome(),
    )
   );
 }
}





// class MyHome extends StatefulWidget {
//   _MyHomeState createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {

//   final TextEditingController _controller = TextEditingController.fromValue(TextEditingValue(text: "duo_shine"));
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('测试redux和存储'),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text('输入框测试....'),
//           TextField(
//             controller: _controller,
//             decoration: new InputDecoration(
//               hintText: "用户名"
//             ),
//           ),
//           RaisedButton(
//             onPressed: (){
//               showDialog(
//                 context: context,
//                 child: AlertDialog(
//                   title: Text('用户名'),
//                   content: Text( _controller.text ),
//                 )
//               );
//             },
//             child: Text('点击'),
//           )
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:flutter/services.dart';
// import 'package:multi_image_picker/multi_image_picker.dart';
// import 'asset_view.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => new _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Asset> images = List<Asset>();
//   String _error;

//   @override
//   void initState() {
//     super.initState();
//   }

//   Widget buildGridView() {
//     return GridView.count(
//       crossAxisCount: 3,
//       children: List.generate(images.length, (index) {
//         return AssetView(index, images[index]);
//       }),
//     );
//   }

//   Future<void> loadAssets() async {
//     setState(() {
//       images = List<Asset>();
//     });

//     List<Asset> resultList;
//     String error;

//     try {
//       resultList = await MultiImagePicker.pickImages(
//         maxImages: 300,
//       );
//     } on PlatformException catch (e) {
//       error = e.message;
//     }
//     if (!mounted) return;

//     setState(() {
//       images = resultList;
//       if (error == null) _error = 'No Error Dectected';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Center(child: Text('Error: $_error')),
//             RaisedButton(
//               child: Text("Pick images"),
//               onPressed: loadAssets,
//             ),
//             Expanded(
//               child: buildGridView(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
