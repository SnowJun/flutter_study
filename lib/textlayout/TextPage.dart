import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("文本"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Text(
            "来了，老弟",
            style: TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          Text(
            "来了，老弟，你好啊！Text用于显示简单样式文本，它包含一些控制文本显示样式的一些属性，一个简单的例子如下：",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "来了，老弟",
            textScaleFactor: 2,
          ),
          Text(
            "老弟，还没走啊",
            style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.blue,
                fontSize: 20,
                fontFamily: "Courier",
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.wavy),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(text: "Home:"),
            TextSpan(text: "https://flutterchina.club",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline),)
          ]))
        ],
      ),
    );
  }
}
