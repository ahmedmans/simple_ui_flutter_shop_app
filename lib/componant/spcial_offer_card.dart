import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class SpcialOfferCard extends StatelessWidget {
  final String? catogry, image;
  final int? brandNum;
  final GestureTapCallback? onTap;

  const SpcialOfferCard(
      {Key? key, this.catogry, this.image, this.brandNum, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportScreenWidth(20.0)),
      child: SizedBox(
        width: getProportScreenWidth(200.0),
        height: getProportScreenHeight(170.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            getProportScreenWidth(15.0),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      textColor.withOpacity(0.5),
                      textColor.withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportScreenWidth(15.0),
                  vertical: getProportScreenWidth(10.0),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '$catogry\n',
                        style: TextStyle(
                          fontSize: getProportScreenWidth(18.0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: '$brandNum Brands'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class SpcialOfferCard extends StatefulWidget {
//   @override
//   _SpcialOfferCardState createState() => _SpcialOfferCardState();
// }

// class _SpcialOfferCardState extends State<SpcialOfferCard> {

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }
