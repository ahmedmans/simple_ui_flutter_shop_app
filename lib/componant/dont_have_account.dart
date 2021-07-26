import 'package:flutter/material.dart';
import 'package:shop_app/screen/signup_screen/signup_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportScreenWidth(18.0),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportScreenWidth(18.0),
              color: primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
