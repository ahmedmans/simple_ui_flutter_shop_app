import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/models/product_moduls.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.pressSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 10.0),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportScreenWidth(65.0),
            padding: EdgeInsets.all(getProportScreenWidth(10.0)),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? primaryColor.withOpacity(0.15)
                  : secondaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: product.isFavourite ? primaryColor : Color(0xffdbdee4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: getProportScreenWidth(20.0),
              right: getProportScreenWidth(70.0)),
          // child: ReadMoreText(
          //   product.description,
          //   trimLines: 3,
          //   colorClickableText: primaryColor,
          //   trimMode: TrimMode.Line,
          //   trimCollapsedText: '...See More Detiles',
          //   trimExpandedText: ' See Less',
          // ),

          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        // Divider(
        //   color: const Color(0xFF167F67),
        // ),
        GestureDetector(
          onTap: pressSeeMore,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportScreenWidth(20.0),
              vertical: 10.0,
            ),
            child: Row(
              children: [
                Text(
                  'See More Detiles',
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  color: primaryColor,
                  size: 12.0,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
