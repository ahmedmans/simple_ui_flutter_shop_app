import 'package:flutter/material.dart';
import 'package:shop_app/screen/forgot_password/componant/body.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static String routeName = '/forgot_pass_screen';
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Body(),
    );
  }
}
