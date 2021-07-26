import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class TitleSection extends StatelessWidget {
  final String? text;
  final GestureTapCallback? onTap;

  const TitleSection({Key? key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
              color: Colors.black,
              fontSize: getProportScreenWidth(20.0),
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text('Show Mor'),
          ),
        ],
      ),
    );
  }
}
