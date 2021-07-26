import 'package:flutter/widgets.dart';
import 'package:shop_app/screen/cart/cart_screen.dart';
import 'package:shop_app/screen/complete_details_user/profile_details.dart';
import 'package:shop_app/screen/details/details_screen.dart';
import 'package:shop_app/screen/forgot_password/forgot_pass_screen.dart';
import 'package:shop_app/screen/home/home_screen.dart';
import 'package:shop_app/screen/otp/otp_screen.dart';
import 'package:shop_app/screen/signin_succss/signin_succss_screen.dart';
import 'package:shop_app/screen/signup_screen/signup_screen.dart';
import 'package:shop_app/screen/splash/splash_screen.dart';
import 'package:shop_app/screen/signin/signin_screen.dart';

// useing name route
// All routes here
final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SigninScreen.routeName: (context) => SigninScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SigninSuccssScreen.routeName: (context) => SigninSuccssScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  ProfileDetails.routeName: (context) => ProfileDetails(),
  OTPScreen.routeName: (context) => OTPScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
