import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/componant/rounded_icon_btn.dart';

import '../../../size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final double? rating;

  CustomAppBar(this.rating);
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportScreenWidth(20.0),
          //vertical: getProportScreenWidth(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIcontBtn(
              iconData: Icons.arrow_back,
              onPress: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: getProportScreenWidth(14.0),
                vertical: getProportScreenWidth(4.0),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  SvgPicture.asset('assets/icons/Star Icon.svg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();
}
