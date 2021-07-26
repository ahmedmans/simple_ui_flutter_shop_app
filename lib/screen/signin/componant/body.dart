import 'package:flutter/material.dart';
import 'package:shop_app/componant/dont_have_account.dart';

import 'package:shop_app/componant/social_media_card.dart';

import 'package:shop_app/size_config.dart';

import 'signin_drow.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportScreenWidth(20.0)),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.01,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportScreenWidth(25.0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMedia(
                      socialIcon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialMedia(
                      socialIcon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialMedia(
                      socialIcon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                //SizedBox(height: SizeConfig.screenHeight * 25.0),
                SizedBox(height: getProportScreenHeight(25.0)),
                DontHaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: SizedBox(
//           width: double.infinity,
//           child: Padding(
//             padding:
//                 EdgeInsets.symmetric(horizontal: getProportScreenWidth(40.0)),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: SizeConfig.screenHeight * 0.02,
//                 ),
//                 Text(
//                   'Welcome Back',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: getProportScreenWidth(25.0),
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Sign in with your email and password \nor continue with social media',
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: SizeConfig.screenHeight * 0.04,
//                 ),
//                 SignForm(),
//                 SizedBox(
//                   height: SizeConfig.screenHeight * 0.04,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SocialMedia(
//                       socialIcon: "assets/icons/google-icon.svg",
//                       press: () {},
//                     ),
//                     SocialMedia(
//                       socialIcon: "assets/icons/facebook-2.svg",
//                       press: () {},
//                     ),
//                     SocialMedia(
//                       socialIcon: "assets/icons/twitter.svg",
//                       press: () {},
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: getProportScreenHeight(20.0)),
//                 DontHaveAccount()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
