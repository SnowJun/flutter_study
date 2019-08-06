import 'package:flutter/material.dart';

class Echo extends StatelessWidget {
  const Echo(
      {Key key, @required this.text, this.backgroundColor: Colors.black12});

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(100.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
