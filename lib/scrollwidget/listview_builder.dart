import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.Builder"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemExtent: 50.0,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("第$index条"));
        },
      ),
    );
  }
}
