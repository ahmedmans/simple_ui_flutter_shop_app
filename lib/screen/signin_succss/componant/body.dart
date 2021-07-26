import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/screen/home/home_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.03,
        ),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.5,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.06,
        ),
        Text(
          'SignIn Success',
          style: TextStyle(
            fontSize: getProportScreenWidth(30.0),
            fontWeight: FontWeight.bold,
          ),
        ),
        // SizedBox(
        //   height: SizeConfig.screenHeight * 0.02,
        // ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: ContinueButton(
            text: 'Back to home',
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
