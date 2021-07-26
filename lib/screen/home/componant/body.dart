import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'category.dart';
import 'header.dart';
import 'offers_banner.dart';
import 'popular_products.dart';
import 'spcial_offer.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportScreenHeight(20.0)),
            HomeHeader(),
            SizedBox(height: getProportScreenHeight(30.0)),
            OffersBanner(),
            SizedBox(height: getProportScreenHeight(30.0)),
            Categories(),
            SizedBox(height: getProportScreenHeight(30.0)),
            SpcialOffers(),
            SizedBox(height: getProportScreenHeight(30.0)),
            PopularProduct(),
            SizedBox(height: getProportScreenHeight(30.0)),
          ],
        ),
      ),
    );
  }
}
