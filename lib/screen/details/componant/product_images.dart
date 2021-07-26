import 'package:flutter/material.dart';
import 'package:shop_app/models/product_moduls.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selecteImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportScreenWidth(235.0),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selecteImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallPreviwe(index),
            ),
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreviwe(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selecteImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportScreenWidth(15.0)),
        padding: EdgeInsets.all(getProportScreenWidth(8.0)),
        width: getProportScreenWidth(50.0),
        height: getProportScreenWidth(50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: selecteImage == index ? primaryColor : Colors.transparent),
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
