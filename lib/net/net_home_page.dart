import 'package:flutter/material.dart';

class NetHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("网络首页"),
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("HttpTest"),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("http_test_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("DioNet"),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("dio_net_page");
                }),
          ),
        ],
      ),
    );
  }
}
