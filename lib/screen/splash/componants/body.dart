import 'package:flutter/material.dart';
import 'package:shop_app/componant/continue_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screen/splash/componants/splash_contant.dart';
import 'package:shop_app/screen/signin/signin_screen.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currntPage = 0;
  List<Map<String, String>> splashScreenData = [
    {
      "text": "Welcome to Mans Shop , Let's Shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "we help people conect with stor \naround Egypt",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "we show the easy way to shop. , \njust Stay at Home with us",
      "image": "assets/images/splash_3.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currntPage = value;
                  });
                },
                itemCount: splashScreenData.length,
                itemBuilder: (context, index) => SplashContant(
                  text: splashScreenData[index]["text"],
                  image: splashScreenData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportScreenWidth(20.0)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashScreenData.length,
                        (index) => buildPoints(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    ContinueButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SigninScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildPoints({int? index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5.0),
      height: 6.0,
      width: (currntPage == index) ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: (currntPage == index) ? primaryColor : Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
