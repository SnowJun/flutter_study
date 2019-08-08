import 'package:flutter/material.dart';

class ScrollHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动组件首页"),
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("SingleChildScrollViewPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("single_child_scroll_view_page");
                }),
          ),
          Padding(padding: EdgeInsets.all(10.0),child: RaisedButton(child: Text("ListViewPage"),onPressed: (){
            Navigator.of(context).pushNamed("list_view_page");
          }),)
        ],
      ),
    );
  }
}
