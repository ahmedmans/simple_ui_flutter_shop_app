import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/product_moduls.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 150.0,
    this.aspectRetion = 1.02,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportScreenWidth(20.0)),
      child: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: getProportScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(getProportScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: secondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: getProportScreenWidth(18.0),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      padding: EdgeInsets.all(getProportScreenWidth(8.0)),
                      width: getProportScreenWidth(30.0),
                      height: getProportScreenWidth(30.0),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? primaryColor.withOpacity(0.15)
                            : secondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? primaryColor
                            : Color(0xffdbdee4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
