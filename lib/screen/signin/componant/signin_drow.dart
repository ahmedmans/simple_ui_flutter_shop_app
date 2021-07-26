import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/componant/custom_svg_icons.dart';
import 'package:shop_app/componant/errors.dart';
import 'package:shop_app/screen/forgot_password/forgot_pass_screen.dart';
import 'package:shop_app/screen/home/home_screen.dart';
//import 'package:shop_app/screen/signin_succss/signin_succss_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final List<String?> errors = [];
  //final List<String> passError = [];
  bool? rememberMe = false;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          emailForm(),
          //SizedBox(height: getProportScreenHeight(5.0)),

          SizedBox(height: getProportScreenHeight(25.0)),
          passwordForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          //ErrorDrow(error: error),
          ErrorDrow(error: errors),
          //SizedBox(height: getProportScreenHeight(2.0)),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
                activeColor: primaryColor,
              ),
              Text('Remember Me'),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgotPasswordScreen.routeName);
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportScreenHeight(10.0)),
          ContinueButton(
            text: 'Sign In',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField passwordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: passwordNull);
        } else if (value.length >= 8) {
          removeError(error: shortPassword);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: passwordNull);
          return "";
        } else if (value.length < 8) {
          addError(error: shortPassword);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField emailForm() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: emailNul);
        } else if (eValidator.hasMatch(value)) {
          removeError(error: invalidEmail);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: emailNul);
          return "";
        } else if (!eValidator.hasMatch(value)) {
          addError(error: invalidEmail);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter your Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
