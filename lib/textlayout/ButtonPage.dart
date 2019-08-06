import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () => {print("click the raisebutton")},
            child: Text("RaisedButton"),
          ),
          FlatButton(
              onPressed: () => {print("click the flatbutton")},
              child: Text("FlatButton")),
          OutlineButton(
            onPressed: () => {print("click the outlinebutton")},
            child: Text("OutlineButton"),
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => {print("click the iconbutton")},
          ),
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("自定义背景蓝色，两边圆角的FlatButton"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20.0)),
            onPressed: () => {},
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blue[700],
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            child: Text("自定义背景蓝色，两边圆角的RaisedButtonn"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20.0)),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
