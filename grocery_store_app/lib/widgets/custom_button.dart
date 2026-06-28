import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.backgoundColor,
    required this.child,
    this.hasBorder = false,
  });
  final Widget child;
  final VoidCallback onPressed;
  final Color backgoundColor;
  final bool? hasBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: .symmetric(vertical: 18),
        decoration: ShapeDecoration(
          color: backgoundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: hasBorder! ? BorderSide(width: 2) : BorderSide.none,
          ),
        ),
        child: child,
      ),
    );
  }
}
