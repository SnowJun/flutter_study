import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //红盒子
    Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

    return Scaffold(
      appBar: AppBar(
        title: Text("约束布局"),
      ),
      body: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity, //宽度尽可能大
                minHeight:
                    50.0 //限制了最小高度  child的高度大于50.0  则高度为child的高度  否则则为最小高度
                ),
            child: Container(
              height: 100.0,
              child: redBox,
            ),
          ),
          Container(
            height: 10.0,
          ),
          ConstrainedBox(
              //多重约束  取两个最小宽度的最大值
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //父
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
                child: redBox,
              )),
          Container(
            height: 10.0,
          ),
          ConstrainedBox(
            //多重约束  取两个最小宽度的最大值
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
            child: UnconstrainedBox(//祛除了父级的约束  但是越是本身还在只是不约束在最终的redBox上  上面的空白是80.0
                child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
              child: redBox,
            )),
          ),
          AppBar(
            title: Text("123"),
            actions: <Widget>[
              SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              )
            ],
          ),
          AppBar(
            title: Text("456"),
            actions: <Widget>[
              UnconstrainedBox(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation(Colors.white70),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
