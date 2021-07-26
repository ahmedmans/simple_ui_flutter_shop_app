import 'package:flutter/material.dart';
import 'package:shop_app/screen/signup_screen/componant/body.dart';

class SignupScreen extends StatefulWidget {
  static String routeName = "/signup_screen";

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SignUpBody(),
    );
  }
}
