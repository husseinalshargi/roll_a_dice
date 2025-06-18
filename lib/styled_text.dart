import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
  }); // this key word makes it automatically mapped to a class variable like text
  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 28.0, color: Colors.white),
    );
  }
}
