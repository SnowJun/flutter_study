import 'package:flutter/material.dart';

class ListViewSeparatedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView.Builder"),
      ),
      body: ListView.separated(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("第$index条"));
        },
        separatorBuilder: (BuildContext context, int index) {
          return index%2==0?divider1:divider2;
        },
      ),
    );
  }
}
