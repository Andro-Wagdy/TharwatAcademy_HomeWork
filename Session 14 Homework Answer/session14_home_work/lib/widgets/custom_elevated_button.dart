import 'package:flutter/material.dart';

class CustomeElvatedButton extends StatelessWidget {
  const CustomeElvatedButton({
    super.key,
    required this.text,
    required this.color,
    required this.elevation,
    required this.radius,
  });
  final Text text;
  final Color color;
  final double elevation;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radius),
        ),
      ),
      child: text,
    );
  }
}
