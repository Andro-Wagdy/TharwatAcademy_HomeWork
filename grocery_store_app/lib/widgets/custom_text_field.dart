import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.contentPadding,
  });
  final TextEditingController controller;
  final String hintText;
  final EdgeInsetsGeometry contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: AppStyles.dm15W400.copyWith(color: AppColors.secondry),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,

        hintStyle: AppStyles.i16W400.copyWith(color: AppColors.hintText),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: AppColors.borderFocused, width: 1),
    );
  }
}
