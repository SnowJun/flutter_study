import 'package:flutter/material.dart';

class ScrollHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动组件首页"),
      ),
      body: Wrap(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("SingleChildScrollViewPage"),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("single_child_scroll_view_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ListViewPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("list_view_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ListViewBuilderPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("list_view_builder_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ListViewSeparatedPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("list_view_separated_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ListViewInfinitePage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("list_view_infinite_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("GridViewPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("grid_view_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("GridViewCountPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("grid_view_count_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("GridViewMaxPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("grid_view_max_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("GridViewExtentPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("grid_view_extent_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("GridViewBuilderPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("grid_view_builder_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("CustomScrollViewPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("custom_scrollview_page");
                }),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
                child: Text("ScrollControllerPage"),
                onPressed: () {
                  Navigator.of(context).pushNamed("scroll_controller_page");
                }),
          )
        ],
      ),
    );
  }
}
