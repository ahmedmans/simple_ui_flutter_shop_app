import 'package:flutter/material.dart';
import 'package:shop_app/screen/complete_details_user/componant/body.dart';

class ProfileDetails extends StatefulWidget {
  static String routeName = '/profile_details';
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ProfileDetailsBody(),
    );
  }
}
