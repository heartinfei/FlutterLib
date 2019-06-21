import 'package:flutter/material.dart';

class PasswordWidget extends StatefulWidget {
  final TextEditingController controller;

  PasswordWidget(this.controller);

  @override
  State createState() {
    return _PasswordState();
  }
}

class _PasswordState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextField(
        autofocus: true,
        controller: widget.controller,
        decoration: InputDecoration(
          icon: Icon(Icons.lock_outline),
          hintText: "请输入密码",
        ),
        keyboardType: TextInputType.text,
        obscureText: true,
      ),
    );
  }
}
