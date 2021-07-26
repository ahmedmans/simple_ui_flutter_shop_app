import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../componant/spcial_offer_card.dart';
import 'title_section.dart';

class SpcialOffers extends StatelessWidget {
  const SpcialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleSection(
          text: 'Spcial Offer',
          onTap: () {},
        ),
        SizedBox(height: getProportScreenHeight(15.0)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpcialOfferCard(
                image: 'assets/images/ps4_console_blue_1.png',
                catogry: 'Games',
                brandNum: 3,
                onTap: () {},
              ),
              SpcialOfferCard(
                image: 'assets/images/tshirt.png',
                catogry: 'Fashion',
                brandNum: 10,
                onTap: () {},
              ),
              SpcialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                catogry: 'Gifts',
                brandNum: 4,
                onTap: () {},
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
