import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
    this.socialIcon,
    this.press,
  }) : super(key: key);
  final String? socialIcon;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportScreenWidth(10.0)),
        padding: EdgeInsets.all(getProportScreenWidth(10.0)),
        height: getProportScreenHeight(50.0),
        width: getProportScreenWidth(50.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: SvgPicture.asset(socialIcon!),
      ),
    );
  }
}
