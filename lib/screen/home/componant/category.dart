import 'package:flutter/material.dart';

import 'package:shop_app/size_config.dart';

import 'Categories_card.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Map<String, dynamic>> categories = [
    {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Flash Deal'},
    {'icon': 'assets/icons/Bill Icon.svg', 'text': 'Bill'},
    {'icon': 'assets/icons/Game Icon.svg', 'text': 'Game'},
    {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Gifts'},
    {'icon': 'assets/icons/Discover.svg', 'text': 'More'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CatigoriesCard(
                icon: categories[index]['icon'],
                text: categories[index]['text'],
                onTap: () {}),
          ),
        ],
      ),
    );
  }
}
