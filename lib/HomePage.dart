import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("文本布局"),
                onPressed: () {
                  Navigator.of(context).pushNamed("text_layout_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(child: Text("容器"), onPressed: () {
              Navigator.of(context).pushNamed("container_home_page");
            }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(child: Text("滑动组件"),onPressed: (){
              Navigator.of(context).pushNamed("scroll_home_page");
            }),
          )
        ],
      ),
    );
  }
}
