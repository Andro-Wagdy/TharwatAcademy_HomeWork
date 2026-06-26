import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.contentPadding,
    required this.validator, required this.autovalidateMode,
  });
  final TextEditingController controller;
  final String hintText;
  final EdgeInsetsGeometry contentPadding;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode autovalidateMode;
  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      controller: widget.controller,
      validator: widget.validator,
      style: AppStyles.dm15W400.copyWith(
        color: AppColors.secondry,
        fontSize: isObscure ? 26 : 16,
        height: isObscure ? 0.9 : 1.2,
        letterSpacing: isObscure ? 2 : 1,
      ),
      obscureText: isObscure,
      obscuringCharacter: '●',
      decoration: InputDecoration(
        contentPadding: widget.contentPadding,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: Icon(
            isObscure
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.grey,
          ),
        ),
        hintText: widget.hintText,
        hintStyle: AppStyles.i16W400.copyWith(color: AppColors.hintText),
        enabledBorder: buildBorder(color: AppColors.borderIdle),
        focusedBorder: buildBorder(color: AppColors.borderFocused),
        errorBorder: buildBorder(color: AppColors.error),
        focusedErrorBorder: buildBorder(color: AppColors.error)
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
