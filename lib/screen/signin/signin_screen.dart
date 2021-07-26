import 'package:flutter/material.dart';
import 'package:shop_app/screen/signin/componant/body.dart';

class SigninScreen extends StatelessWidget {
  static String routeName = '/signin_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Body(),
    );
  }
}

// class SigninScreen extends StatefulWidget {
//   static String routeName = '/signin_screen';
//   @override
//   _SigninScreenState createState() => _SigninScreenState();
// }

// class _SigninScreenState extends State<SigninScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign In'),
//       ),
//       body: Body(),
//     );
//   }
// }
