import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BtnIconWithNotifcation extends StatelessWidget {
  const BtnIconWithNotifcation({
    Key? key,
    required this.svgIcon,
    this.itemCount = 0,
    this.press,
  }) : super(key: key);

  final String svgIcon;
  final int itemCount;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportScreenWidth(12.0)),
            height: getProportScreenWidth(50.0),
            width: getProportScreenWidth(50.0),
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgIcon),
            // Icon(
            //   Icons.notifications,
            //   color: primaryColor,
            // ), SvgPicture.asset('assets/icons/Bell.svg'),
          ),
          if (itemCount != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportScreenHeight(18.0),
                width: getProportScreenWidth(18.0),
                decoration: BoxDecoration(
                  color: Color(0xFFF50000),
                  borderRadius: BorderRadius.circular(8.0),

                  //shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Colors.white,
                  ),
                ),
                child: Text(
                  "$itemCount",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: getProportScreenWidth(8),
                    height: 1.25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
