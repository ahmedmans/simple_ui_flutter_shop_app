import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/cart_moduls.dart';
import 'package:shop_app/size_config.dart';

import 'componant/cart_body.dart';

class CartScreen extends StatefulWidget {
  static String routeName = '/cart_screen';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            '${demoCarts.length} item',
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportScreenWidth(30.0),
        vertical: getProportScreenWidth(15.0),
      ),
      //height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20.0,
            color: Color(0xfff5f6f9),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  height: getProportScreenWidth(40.0),
                  width: getProportScreenWidth(40.0),
                  decoration: BoxDecoration(
                    color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/receipt.svg',
                    color: primaryColor,
                  ),
                ),
                Spacer(),
                Text('Add voucher code'),
                const SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.0,
                  color: textColor,
                ),
              ],
            ),
            SizedBox(
              height: getProportScreenWidth(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Total:\n',
                    children: [
                      TextSpan(
                        text: '\$377.15',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportScreenWidth(170.0),
                  child: ContinueButton(
                    text: 'Check Out',
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
