import 'package:flutter/material.dart';
import 'package:shop_app/screen/otp/componant/body.dart';

class OTPScreen extends StatefulWidget {
  static String routeName = '/otp_screen';
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: OTPBody(),
    );
  }
}
