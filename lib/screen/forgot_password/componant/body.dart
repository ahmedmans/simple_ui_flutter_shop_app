import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/componant/custom_svg_icons.dart';
import 'package:shop_app/componant/dont_have_account.dart';
import 'package:shop_app/componant/errors.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportScreenWidth(25.0),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will sand \nyou link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  List<String> emailError = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && emailError.contains(emailNul)) {
                setState(() {
                  emailError.remove(emailNul);
                });
              } else if (eValidator.hasMatch(value) &&
                  emailError.contains(invalidEmail)) {
                setState(() {
                  emailError.remove(invalidEmail);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !emailError.contains(emailNul)) {
                setState(() {
                  emailError.add(emailNul);
                });
              } else if (!eValidator.hasMatch(value) &&
                  !emailError.contains(invalidEmail)) {
                setState(() {
                  emailError.add(invalidEmail);
                });
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
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          ErrorDrow(error: emailError),
          SizedBox(
            height: getProportScreenHeight(30.0),
          ),
          ContinueButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DontHaveAccount(),
        ],
      ),
    );
  }
}
