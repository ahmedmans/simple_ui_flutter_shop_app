import 'package:flutter/material.dart';
import 'package:shop_app/componant/product_card.dart';
import 'package:shop_app/models/product_moduls.dart';
import 'package:shop_app/screen/details/details_screen.dart';
import 'package:shop_app/screen/home/componant/title_section.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSection(
          text: 'Popular Product',
          onTap: () {},
        ),
        SizedBox(height: getProportScreenHeight(30.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      onPress: () {
                        Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: ProDetArguments(
                              product: demoProducts[index],
                            ));
                      },
                    );

                  return SizedBox.shrink();
                },
              ),
              SizedBox(
                width: getProportScreenWidth(20.0),
              )
            ],
          ),
        ),
      ],
    );
  }
}
