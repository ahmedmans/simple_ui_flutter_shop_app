import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/componant/custom_svg_icons.dart';
import 'package:shop_app/componant/errors.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screen/otp/otp_screen.dart';
import '../../../size_config.dart';

class ProfileDetailsForm extends StatefulWidget {
  @override
  _ProfileDetailsFormState createState() => _ProfileDetailsFormState();
}

class _ProfileDetailsFormState extends State<ProfileDetailsForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  final List<String?> errors = [];
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
          firstNameTextForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          lastNameTextForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          phonNumTextForm(),
          SizedBox(height: getProportScreenHeight(25.0)),
          addressTextForm(),
          ErrorDrow(error: errors),
          SizedBox(height: getProportScreenHeight(40.0)),
          ContinueButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, OTPScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField addressTextForm() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: addressNull);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: addressNull);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

  TextFormField phonNumTextForm() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: phoneNumNull);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: phoneNumNull);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField firstNameTextForm() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: yourNameNull);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: yourNameNull);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  TextFormField lastNameTextForm() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: yourNameNull);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: yourNameNull);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSvgIcons(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
