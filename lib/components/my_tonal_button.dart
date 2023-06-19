import 'package:flutter/material.dart';

class MyTonalButton extends StatelessWidget {
  const MyTonalButton({super.key, required this.title, required this.onTap});
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
        ),
      ),
    );
  }
}
