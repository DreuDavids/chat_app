import 'package:flutter/material.dart';

class LogoBox extends StatelessWidget {
  const LogoBox({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: 'Logo',
        child: Image.asset('images/logo.png'),
      ),
    );
  }
}
