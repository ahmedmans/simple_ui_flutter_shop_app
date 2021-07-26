import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const primaryColor = Color(0xff9400D3);
const primaryLightColor = Color(0xFFFFECDF);
const primaryGradintColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xff7000d0),
    Color(0xff9400D3),
  ],
);

const secondaryColor = Color(0xFF979797);
const textColor = Color(0xFF757575);

const animationDuration = Duration(milliseconds: 200);

final RegExp eValidator = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
final String emailNul = "Please Enter your Email";
final String invalidEmail = "Please Enter Valid Email";
final String passwordNull = "Please Enter your Password";
final String shortPassword = "Password is short";
final String matchPassword = "password don't match";
final String yourNameNull = 'your name is required';

final String phoneNumNull = 'phone numbere is required';
final String addressNull = 'address is required';

final otpDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportScreenWidth(15.0)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
        color: textColor,
      ));
}
