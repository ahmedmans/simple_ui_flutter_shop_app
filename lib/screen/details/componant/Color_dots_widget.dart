import 'package:flutter/material.dart';
import 'package:shop_app/componant/rounded_icon_btn.dart';
import 'package:shop_app/models/product_moduls.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDotsWedget extends StatelessWidget {
  const ColorDotsWedget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int isSelected = 2;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      child: SingleChildScrollView(
        child: Row(
          children: [
            ...List.generate(
              product.colors.length,
              (index) => ColorDot(
                color: product.colors[index],
                selected: isSelected == index,
              ),
            ),
            Spacer(),
            RoundedIcontBtn(iconData: Icons.remove, onPress: () {}),
            SizedBox(width: getProportScreenWidth(15.0)),
            RoundedIcontBtn(iconData: Icons.add, onPress: () {}),
          ],
        ),
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.selected = false,
  }) : super(key: key);

  final Color color;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getProportScreenWidth(8.0)),
      padding: EdgeInsets.all(8.0),
      height: getProportScreenWidth(40.0),
      width: getProportScreenWidth(40.0),
      decoration: BoxDecoration(
        //color: widget.product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(
          color: selected ? primaryColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
