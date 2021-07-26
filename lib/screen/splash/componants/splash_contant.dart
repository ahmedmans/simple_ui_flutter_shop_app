import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContant extends StatelessWidget {
  const SplashContant({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'MansShop',
          style: TextStyle(
            fontSize: getProportScreenWidth(36),
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getProportScreenHeight(265),
          width: getProportScreenWidth(235),
        ),
      ],
    );
  }
}
