import 'package:flutter/material.dart';
import 'package:shop_app/screen/home/componant/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
