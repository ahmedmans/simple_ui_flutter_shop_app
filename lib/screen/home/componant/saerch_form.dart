import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SaerchForm extends StatelessWidget {
  const SaerchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      //height: 50.0,
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        onChanged: (value) {
          // search value
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
              horizontal: getProportScreenWidth(20.0),
              vertical: getProportScreenWidth(9.0)),
        ),
      ),
    );
  }
}
