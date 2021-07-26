import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/componant/custom_svg_icons.dart';
import 'package:shop_app/componant/errors.dart';
import 'package:shop_app/screen/complete_details_user/profile_details.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpDrow extends StatefulWidget {
  @override
  _SignUpDrowState createState() => _SignUpDrowState();
}

class _SignUpDrowState extends State<SignUpDrow> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conformPassword;
  final List<String?> errors = [];

  bool rememberMe = false;
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
          emailTextForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          passwordTextForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          confirmPasswordTextForm(),
          ErrorDrow(error: errors),
          SizedBox(height: getProportScreenHeight(40.0)),
          ContinueButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, ProfileDetails.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField confirmPasswordTextForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: passwordNull);
        } else if (password == conformPassword) {
          removeError(error: matchPassword);
        }
        conformPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: passwordNull);
          return "";
        } else if (password != value) {
          addError(error: matchPassword);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Confirm Password',
        hintText: 'Re-enter your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField passwordTextForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: passwordNull);
        } else if (value.length >= 8) {
          removeError(error: shortPassword);
        }
        password = value;
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

  TextFormField emailTextForm() {
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
