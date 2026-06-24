import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.child, required this.backgoundColor});
  final Widget child;
  final VoidCallback onPressed;
  final Color backgoundColor;
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
            
          ),
        ),
        child: child,
      ),
    );
  }
}
