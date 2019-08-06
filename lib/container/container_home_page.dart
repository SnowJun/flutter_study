import 'package:flutter/material.dart';

class ContainerHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器首页"),
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("Padding"),
                onPressed: () {
                  Navigator.of(context).pushNamed("padding_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ConstrainedBox"),
                onPressed: () {
                  Navigator.of(context).pushNamed("constrainedbox_page");
                }),
          ),
        ],
      ),
    );
  }

}