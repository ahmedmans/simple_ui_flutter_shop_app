import 'package:flutter/material.dart';

import 'package:shop_app/screen/complete_details_user/componant/profile_details_form.dart';
import 'package:shop_app/size_config.dart';

class ProfileDetailsBody extends StatefulWidget {
  @override
  _ProfileDetailsBodyState createState() => _ProfileDetailsBodyState();
}

class _ProfileDetailsBodyState extends State<ProfileDetailsBody> {
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
                'Complete Profile',
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
              ProfileDetailsForm(),
              SizedBox(height: getProportScreenHeight(30.0)),
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
