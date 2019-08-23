import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioNetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DioNetPageState();
  }
}

class DioNetPageState extends State<DioNetPage> {
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FutureBuilder(
            future: _dio.get("https://api.github.com/orgs/flutterchina/repos"),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.connectionState == ConnectionState.done){
                Response response = snapshot.data;
                if(snapshot.hasError){
                  return Text(snapshot.error.toString());
                }
                return ListView(children: response.data.map<Widget>((e)=>ListTile(title: Text(e["full_name"]),)).toList(),);
              }
              return CircularProgressIndicator();
            }),
      ),
    );
  }
}
