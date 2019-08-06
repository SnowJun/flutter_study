import 'package:flutter/material.dart';

class ImageIconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("图片Icon"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Image(
            fit: BoxFit.contain,
            image: NetworkImage(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564036710943&di=142e6c951f8258fac3a67ea93c9bee1c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201702%2F13%2F20170213220730_semC8.png"),
            width: 200,
            height: 150,
          ),
          Image.asset(
            "images/avatar.png",
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
          Image(
            image: AssetImage("images/flutter_image.jpg"),
            fit: BoxFit.cover,
            width: 200,
            height: 100,
          ),
          Image.asset(
            "images/timg.jpg",
            width: 200,
            height: 300,
            color: Colors.blue,
            colorBlendMode:   BlendMode.dst,
            repeat: ImageRepeat.repeatY,
          )
        ],
      ),
    );
  }
}
