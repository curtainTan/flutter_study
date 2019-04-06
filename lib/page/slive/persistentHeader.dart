import 'package:flutter/material.dart';



class DemoHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("http://curtaintan.club/headImg/1549358122065.jpg"),
          fit: BoxFit.fitWidth
        )
      ),
      alignment: Alignment.center,
      child: Text("这里的头部"),
    );
  }
  @override
  double get maxExtent => 300.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;

}

class SliverPersistentHeaderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: DemoHeader(),
            pinned: true,
          ),
          SliverFillRemaining(
            child: Center(child: Text('FillRemaining', style: TextStyle(fontSize: 30.0))),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 400.0,
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
    );
  }
}










