import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/cart_moduls.dart';
import 'package:shop_app/size_config.dart';

import 'cart_item_card.dart';

class CartBody extends StatefulWidget {
  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: getProportScreenWidth(10.0)),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(demoCarts[index].product.id.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportScreenHeight(20.0)),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    'assets/icons/Trash.svg',
                    color: primaryColor,
                  ),
                ],
              ),
            ),
            child: CartItemCard(
              cart: demoCarts[index],
            ),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
