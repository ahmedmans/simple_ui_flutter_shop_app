import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';

import 'package:shop_app/models/product_moduls.dart';
import 'package:shop_app/size_config.dart';

import 'Color_dots_widget.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded.dart';

class DetailsBody extends StatefulWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(
            product: widget.product,
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: widget.product,
                  pressSeeMore: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDotsWedget(product: widget.product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            //top: getProportScreenWidth(10.0),
                            bottom: getProportScreenWidth(15.0),
                          ),
                          child: ContinueButton(
                            text: 'Add To Cart',
                            press: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class DetailsBody extends StatelessWidget {
//   final Product product;

//   const DetailsBody({Key key, @required this.product}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ProductImages(product: product);
//   }
// }

// class DetailsBody extends StatelessWidget {
//   final Product product;

//   const DetailsBody({Key key, @required this.product}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: getProportScreenWidth(235.0),
//           child: AspectRatio(
//             aspectRatio: 1,
//             child: Image.asset(product.images[0]),
//           ),
//         ),
//       ],
//     );
//   }
// }
