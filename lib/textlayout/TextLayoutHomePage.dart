import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/textlayout/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '计数器',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("打开第二页"),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
            FlatButton(
              child: Text("TextDemo"),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.of(context).pushNamed("text_page");
              },
            ),
            FlatButton(
              child: Text("ButtonDemo"),
              textColor: Colors.amber,
              onPressed: () {
                Navigator.of(context).pushNamed("button_page");
              },
            ),
            RaisedButton(
                child: Text("ImageIconDemo"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("image_icon_page");
                }),
            RaisedButton(
                child: Text("SwitchCheckDemo"),
                textColor: Colors.blue,
                onPressed: () {
                  Navigator.of(context).pushNamed("switch_check_page");
                }),
            RaisedButton(
              child: Text("InputFormPage"),
              textColor: Colors.red,
              onPressed: () {
                Navigator.of(context).pushNamed("input_form_page");
              },
            ),
            RaisedButton(
              child: Text("Row"),
              textColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).pushNamed("row_page");
              },
            ),
            RaisedButton(
                child: Text("Flex"),
                onPressed: () {
                  Navigator.of(context).pushNamed("flex_page");
                }),
            RaisedButton(
                child: Text("Wrap"),
                onPressed: () {
                  Navigator.of(context).pushNamed("wrap_page");
                }),
            RaisedButton(
                child: Text("Stack"),
                onPressed: () {
                  Navigator.of(context).pushNamed("stack_positioned_page");
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
