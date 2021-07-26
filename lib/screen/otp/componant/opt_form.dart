import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  FocusNode? focusPin2;
  FocusNode? focusPin3;
  FocusNode? focusPin4;

  @override
  void initState() {
    super.initState();
    focusPin2 = FocusNode();
    focusPin3 = FocusNode();
    focusPin4 = FocusNode();
  }

  @override
  void dispose() {
    focusPin2!.dispose();
    focusPin3!.dispose();
    focusPin4!.dispose();
    super.dispose();
  }

  void nextForm({required String value, FocusNode? focusNode}) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: getProportScreenWidth(60.0),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25.0),
                  decoration: otpDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextForm(value: value, focusNode: focusPin2);
                  },
                ),
              ),
              SizedBox(
                width: getProportScreenWidth(60.0),
                child: TextFormField(
                  focusNode: focusPin2,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25.0),
                  decoration: otpDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextForm(value: value, focusNode: focusPin3);
                  },
                ),
              ),
              SizedBox(
                width: getProportScreenWidth(60.0),
                child: TextFormField(
                  focusNode: focusPin3,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25.0),
                  decoration: otpDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextForm(value: value, focusNode: focusPin4);
                  },
                ),
              ),
              SizedBox(
                width: getProportScreenWidth(60.0),
                child: TextFormField(
                  focusNode: focusPin4,
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 25.0),
                  decoration: otpDecoration,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    focusPin4!.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          ContinueButton(
            text: 'Continue',
            press: () {},
          ),
        ],
      ),
    );
  }
}
