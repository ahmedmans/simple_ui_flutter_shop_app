import 'package:flutter/material.dart';
import 'package:shop_app/route.dart';

import 'package:shop_app/screen/splash/splash_screen.dart';
import 'package:shop_app/them.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      theme: themeData(),
      // home: HomeScreen(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
