import 'package:flutter/material.dart';

import 'package:shop_app/models/product_moduls.dart';
import 'package:shop_app/screen/details/componant/details_body.dart';

import 'componant/custom_app_bar.dart';

class DetailsScreen extends StatefulWidget {
  static String routeName = '/details_screen';
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final ProDetArguments arguments = ModalRoute.of(context)!.settings.arguments as ProDetArguments;
    return Scaffold(
      backgroundColor: Color(0xfff5f6f9), //0xfff5f6f9
      appBar: CustomAppBar(arguments.product.rating),
      body: DetailsBody(
        product: arguments.product,
      ),
    );
  }
}

class ProDetArguments {
  final Product product;

  ProDetArguments({required this.product});
}
