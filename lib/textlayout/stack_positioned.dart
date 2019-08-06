import 'package:flutter/material.dart';

class StackPositionedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("层叠布局"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.red,
                child: Text(
                  "Hello World",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(left: 18.0, child: Text("I am Jack")),
              Positioned(top: 18.0, child: Text("your friend"))
            ],
          ),
        )
    );
  }
}
