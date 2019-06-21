import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback listener;

  LoginWidget(this.listener);

  @override
  State createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
      child: new Row(
        children: [
          new Expanded(
            child: new RaisedButton(
              //通过控制 Text 的边距来控制控件的高度
              child: new Text("登录"),
              color: Colors.blue,
              onPressed: widget.listener,
            ),
          ),
        ],
      ),
    );
  }
}
