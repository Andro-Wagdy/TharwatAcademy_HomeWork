import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.contentPadding,
    this.keyboardType,
    required this.validator, required this.autovalidateMode,
  });
  final TextEditingController controller;
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final TextInputType? keyboardType;
  final FormFieldValidator<String> validator;
  final AutovalidateMode autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      validator: validator,
      controller: controller,
      keyboardType: keyboardType,
      style: AppStyles.dm15W400.copyWith(color: AppColors.secondry),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        hintText: hintText,
        hintStyle: AppStyles.i16W400.copyWith(color: AppColors.hintText),
        enabledBorder: buildBorder(color: AppColors.borderIdle),
        focusedBorder: buildBorder(color: AppColors.borderFocused),
        errorBorder: buildBorder(color: AppColors.error),
        focusedErrorBorder: buildBorder(color: AppColors.error),
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
