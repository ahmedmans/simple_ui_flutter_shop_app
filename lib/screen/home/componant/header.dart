import 'package:flutter/material.dart';
import 'package:shop_app/screen/cart/cart_screen.dart';
import 'package:shop_app/screen/home/componant/btn_icon_with_notifcation.dart';

import '../../../size_config.dart';
import 'saerch_form.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SaerchForm(),
          BtnIconWithNotifcation(
            svgIcon: 'assets/icons/Cart Icon.svg',
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            itemCount: 0,
          ),
          BtnIconWithNotifcation(
            svgIcon: 'assets/icons/Bell.svg',
            press: () {},
            itemCount: 99,
          ),
        ],
      ),
    );
  }
}
