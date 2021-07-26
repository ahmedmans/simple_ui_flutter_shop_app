// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportScreenHeight(60.0),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: primaryColor,
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportScreenWidth(18.0),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
