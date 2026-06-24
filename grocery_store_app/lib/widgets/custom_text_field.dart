import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.contentPadding, this.keyboardType,
  });
  final TextEditingController controller;
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: AppStyles.dm15W400.copyWith(color: AppColors.secondry),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,

        hintStyle: AppStyles.i16W400.copyWith(color: AppColors.hintText),
        enabledBorder: buildBorder(color: AppColors.borderIdle),
        focusedBorder: buildBorder(color: AppColors.borderFocused),
      ),
    );
  }

  OutlineInputBorder buildBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
