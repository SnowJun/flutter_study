import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Hello World"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text("I am Jack"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
              child: Text("Your Friend"),
            )
          ],
        ),
      ),
    );
  }
}
