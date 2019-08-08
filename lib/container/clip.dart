import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget avator = Image.asset(
      "images/flutter_image.jpg",
      width: 100.0,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Clip"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              avator, //不裁剪
              ClipOval(
                child: avator,
              ), //裁剪为圆形
              ClipRRect(
                child: avator,
                borderRadius: BorderRadius.circular(5.0),
              ), //裁剪为圆角矩形
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,
                    child: avator,
                  ),
                  Text(
                    "你好，世界",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRect(
                    //将溢出部分裁剪
                    child: Align(
                      alignment: Alignment.topLeft,
                      widthFactor: .5,
                      child: avator,
                    ),
                  ),
                  Text(
                    "你好，世界",
                    style: TextStyle(color: Colors.green),
                  )
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: ClipRect(
                  child: avator,
                  clipper: MyClipper(),
                ),
              )
            ],
          ),
        ));
  }
}

///自定义裁剪
class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(10.0, 10.0, 80.0, 50.0);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}
