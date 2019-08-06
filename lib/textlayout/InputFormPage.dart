import 'package:flutter/material.dart';

class InputFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///监听器
    TextEditingController _userNameEditController = TextEditingController();
    TextEditingController _passwordEditController = TextEditingController();
    _userNameEditController.addListener(() {
      print(
          "_userNameEditController the value is ${_userNameEditController.text}");
    });
//    _userNameEditController.text = "老弟，你咋还没来";
//    _userNameEditController.selection = TextSelection(
//        baseOffset: 2, extentOffset: _userNameEditController.text.length);
    _passwordEditController.addListener(() {
      print(
          "_passwordEditController the value is ${_passwordEditController.text}");
    });

    ///焦点控制
    FocusNode userNameFocusNode = FocusNode();
    FocusNode passwordFocusNode = FocusNode();

    return Scaffold(
      appBar: AppBar(
        title: Text("输入框、表单"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            focusNode: userNameFocusNode,
            controller: _userNameEditController,
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "邮箱也行",
                prefixIcon: Icon(Icons.person)),
            onChanged: (value) {
              print("用户名：$value");
            },
          ),
          TextField(
            focusNode: passwordFocusNode,
            keyboardType: TextInputType.datetime,
            controller: _passwordEditController,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "不输就别进去了",
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
            onChanged: (value) {
              print("密码：$value");
            },
          ),
         Builder(builder: (ctx){
           return Column(
             children: <Widget>[
               RaisedButton(
                   child: Text("移动焦点到密码框"),
                   onPressed: () {
                     FocusScope.of(context).requestFocus(passwordFocusNode);
                   }),
               RaisedButton(
                 child: Text("隐藏键盘"),
                 onPressed: () {

                   // 当所有编辑框都失去焦点时键盘就会收起
                   userNameFocusNode.unfocus();
                   passwordFocusNode.unfocus();
                 },
               ),
             ],
           );
         })
        ],
      ),
    );
  }
}
