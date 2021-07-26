import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';

import '../../../size_config.dart';

class CatigoriesCard extends StatelessWidget {
  const CatigoriesCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: getProportScreenWidth(60.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportScreenWidth(10.0)),
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: SvgPicture.asset(
                  icon!,
                  color: primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              text!,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
