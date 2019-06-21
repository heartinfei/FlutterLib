import 'package:flutter/material.dart';

class PhoneNumWidget extends StatefulWidget {
  final TextEditingController controller;

  PhoneNumWidget(this.controller);

  @override
  State createState() {
    return _PhoneNumState();
  }
}

class _PhoneNumState extends State<PhoneNumWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          controller: widget.controller,
          maxLines: 1,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
              icon: Icon(Icons.phone), hintText: "请输入手机号"),
          autofocus: true,
        ));
  }
}
