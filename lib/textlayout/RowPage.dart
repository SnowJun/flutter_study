import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("行"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //默认为max
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[Text("Hello world!"), Text("I am Jack")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //默认为max
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text("Hello world!"), Text("I am Jack")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //默认为max
            textDirection: TextDirection.rtl,
            children: <Widget>[Text("Hello world!"), Text("I am Jack")],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text(
                "hello world",
                style: TextStyle(fontSize: 30.0),
              ),
              Text("I am Jack")
            ],
          )
        ],
      ),
    );
  }
}
