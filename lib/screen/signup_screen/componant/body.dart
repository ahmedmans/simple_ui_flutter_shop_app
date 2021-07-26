import 'package:flutter/material.dart';
import 'package:shop_app/componant/social_media_card.dart';

import 'package:shop_app/screen/signup_screen/componant/signup_drow.dart';
import 'package:shop_app/size_config.dart';

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              SignUpDrow(),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMedia(
                    socialIcon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialMedia(
                    socialIcon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialMedia(
                    socialIcon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportScreenHeight(20.0)),
              Text(
                'By continuing your confirm that you agree \nwith our Term and Condition',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
