import 'package:flutter/material.dart';

// 添加依赖
import "package:english_words/english_words.dart";

class ListViewInfinitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("无限列表"),
        ),
//        body: Column(
//          children: <Widget>[
//            ListTile(title: Text("商品列表")),
//            SizedBox(
//              height: MediaQuery.of(context).size.height-24-56-56,
//              child: ListViewInfiniteView(),
//            ),
//          ],
//        )
    body: Column(
     children: <Widget>[
       ListTile(title:Text("商品列表")),
       Expanded(child: ListViewInfiniteView())
     ],
    ),
    );
  }
}

class ListViewInfiniteView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InfiniteListViewState();
  }
}

class _InfiniteListViewState extends State<ListViewInfiniteView> {
  static const loadingTag = "加载中...";
  var _words = <String>[loadingTag];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          if (_words[index] == loadingTag) {
            if (_words.length - 1 < 100) {
              //获取数据
              _retrieveData();
              //加载时显示loading
              return Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "没有更多了",
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }
          }

          return ListTile(
            title: Text(_words[index]),
          );
        },
        separatorBuilder: (context, index) => Divider(
              height: 0,
            ),
        itemCount: _words.length);
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {});
    });
  }
}
