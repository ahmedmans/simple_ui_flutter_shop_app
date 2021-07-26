import 'package:flutter/material.dart';
import 'package:shop_app/screen/splash/componants/body.dart';
import 'package:shop_app/size_config.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = '/splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
