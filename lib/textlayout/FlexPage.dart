import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹性布局"),
      ),
      body: Column(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.blue,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 100.0,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: 30.0,
                        color: Colors.red,
                      )),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: 30.0,
                        color: Colors.green,
                      ))
                ],
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            //Row和Column均继承自Flex
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 50.0,
                    color: Colors.blue,
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    height: 50.0,
                    color: Colors.red,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
