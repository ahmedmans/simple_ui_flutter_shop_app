import 'package:flutter/material.dart';

import '../../../size_config.dart';

class OffersBanner extends StatelessWidget {
  const OffersBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      width: double.infinity,
      //height: getProportScreenHeight(90.0),
      padding: EdgeInsets.symmetric(
          horizontal: getProportScreenWidth(20.0),
          vertical: getProportScreenWidth(15.0)),
      decoration: BoxDecoration(
        color: Color(0xff00008b),
        borderRadius: BorderRadius.circular(
          getProportScreenWidth(20.0),
        ),
      ),
      child: Text.rich(
        TextSpan(
          text: 'A Summer Surpise\n',
          style: TextStyle(
            //fontSize: 13.0,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'Cachback 20%',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
