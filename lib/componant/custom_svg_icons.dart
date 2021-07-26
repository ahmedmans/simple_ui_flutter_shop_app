import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class CustomSvgIcons extends StatelessWidget {
  const CustomSvgIcons({
    Key? key,
    required this.svgIcon,
  }) : super(key: key);
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportScreenWidth(15.0),
        getProportScreenWidth(15.0),
        getProportScreenWidth(15.0),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportScreenHeight(20.0),
      ),
    );
  }
}
