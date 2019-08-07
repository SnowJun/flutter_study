import 'package:flutter/material.dart';
import 'package:flutter_app/textlayout/stack_positioned.dart';

import 'package:flutter_app/textlayout/FlexPage.dart';
import 'HomePage.dart';
import 'package:flutter_app/textlayout/RowPage.dart';
import 'package:flutter_app/textlayout/SwithCheckPage.dart';
import 'package:flutter_app/textlayout/TextLayoutHomePage.dart';
import 'package:flutter_app/textlayout/TextPage.dart';
import 'package:flutter_app/textlayout/ButtonPage.dart';
import 'package:flutter_app/textlayout/ImageIconPage.dart';
import 'package:flutter_app/textlayout/InputFormPage.dart';
import 'package:flutter_app/textlayout/WrapPage.dart';

import 'container/constrainedbox.dart';
import 'container/container.dart';
import 'container/container_home_page.dart';
import 'container/decorated_box.dart';
import 'container/padding.dart';
import 'container/transform.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterStudy',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
      routes: {
        //文本布局相关
        "text_layout_page":(context)=>new MyHomePage(title: "文本布局",),
        "text_page":(context)=>new TextPage(),
        "button_page":(context)=>new ButtonPage(),
        "image_icon_page":(context)=>new ImageIconPage(),
        "switch_check_page":(context)=>new SwitchCheckPage(),
        "input_form_page":(context)=>new InputFormPage(),
        "row_page":(context)=>new RowPage(),
        "flex_page":(context)=>new FlexPage(),
        "wrap_page":(context)=>new WrapPage(),
        "stack_positioned_page":(context)=>new StackPositionedPage(),
        //容器相关
        "container_home_page":(context)=>new ContainerHomePage(),
        "padding_page":(context)=>new PaddingPage(),
        "constrainedbox_page":(context)=>new ConstrainedBoxPage(),
        "decoratedbox_page":(context)=>new DecoratedBoxPage(),
        "transformPage_page":(context)=>new TransformPage(),
        "container_page":(context)=>new ContainerPage(),

      },
    );
  }
}





