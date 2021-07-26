import 'package:flutter/material.dart';
import 'package:shop_app/models/cart_moduls.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportScreenHeight(88.0),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportScreenWidth(10.0)),
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadiusDirectional.circular(10.0),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportScreenWidth(20.0),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text.rich(
              TextSpan(
                  text: '\$${cart.product.price}',
                  style: TextStyle(
                    color: primaryColor,
                  ),
                  children: [
                    TextSpan(
                        text: ' x${cart.itemNum}',
                        style: TextStyle(
                          color: textColor,
                        )),
                  ]),
            ),
          ],
        ),
      ],
    );
  }
}
