// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIcontBtn extends StatelessWidget {
  const RoundedIcontBtn({
    Key? key,
    required this.iconData,
    required this.onPress,
  }) : super(key: key);
  final IconData iconData;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportScreenWidth(50.0),
      width: getProportScreenWidth(50.0),
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: onPress,
        child: Icon(iconData),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
