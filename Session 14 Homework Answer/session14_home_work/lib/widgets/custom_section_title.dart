import 'package:flutter/material.dart';

class CustomSectionTitle extends StatelessWidget {
  const CustomSectionTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff140d15),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
