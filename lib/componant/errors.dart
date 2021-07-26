import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class ErrorDrow extends StatelessWidget {
  const ErrorDrow({
    Key? key,
    required this.error,
  }) : super(key: key);

  final List<String?> error;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          error.length, (index) => errorTextDRrow(error: error[index]!)),
    );
  }

  Row errorTextDRrow({required String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          'assets/icons/Error.svg',
          height: getProportScreenHeight(15.0),
          width: getProportScreenWidth(15.0),
        ),
        SizedBox(
          width: getProportScreenWidth(10.0),
        ),
        Text(error),
      ],
    );
  }
}
