import 'package:flutter/material.dart';

class ToprightLogo extends StatelessWidget {
  const ToprightLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -20,
      right: -50,
      child: Image.asset(
        'assets/images/logo-flipped.png',
        scale: 1,
      ),
    );
  }
}
