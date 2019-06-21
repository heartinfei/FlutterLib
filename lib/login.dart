import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lib/widget/login_widget.dart';
import 'package:flutter_lib/widget/phone_num_widget.dart';
import 'package:flutter_lib/widget/psw_widget.dart';

void main() => runApp(ZDMApp());

class ZDMApp extends StatelessWidget {
  final appName = "什么值得买分享";

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appName,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LoginPage(),
      );
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  var phoneController = TextEditingController();
  var pswController = TextEditingController();
  static const MethodChannel methodChannel = MethodChannel("flutter/module");

  void login() async {
    var phone = phoneController.text;
    var psw = pswController.text;
    try {
      methodChannel.invokeMethod("onLogined", [phone, psw]);
      print("invoked");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("登陆"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            PhoneNumWidget(phoneController),
            PasswordWidget(pswController),
            LoginWidget(login),
          ],
        ),
      );
}
