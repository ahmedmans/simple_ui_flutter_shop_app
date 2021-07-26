import 'package:flutter/material.dart';
import 'package:shop_app/screen/signin_succss/componant/body.dart';

class SigninSuccssScreen extends StatefulWidget {
  static String routeName = "/signin_succss_screen";
  @override
  _SigninSuccssScreenState createState() => _SigninSuccssScreenState();
}

class _SigninSuccssScreenState extends State<SigninSuccssScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Sign In Succss"),
      ),
      body: Body(),
    );
  }
}
