import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/password_text_field.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';
import 'package:grocery_store_app/widgets/custom_text_field.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<SignInViewBody> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  @override
  void dispose() {
    _controllerEmail.dispose();
    _controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 32),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Row(
            children: [
              Text(
                'Sign In',
                style: AppStyles.p20W600.copyWith(color: AppColors.secondry),
              ),
              Spacer(),
              SvgPicture.asset(Assets.assetsIconsCancelIcon),
            ],
          ),
          SizedBox(height: 32),
          CustomTextField(
            controller: _controllerEmail,
            hintText: 'Email',
            contentPadding: .symmetric(vertical: 18, horizontal: 20),
            keyboardType: .emailAddress,
          ),
          SizedBox(height: 12),
          PasswordTextField(
            controller: _controllerPassword,
            hintText: 'Password',
            contentPadding: .symmetric(vertical: 18, horizontal: 20),
          ),
          SizedBox(height: 12),
          Text(
            'Forget Password?',
            style: AppStyles.p14W400.copyWith(color: AppColors.borderFocused),
          ),
          SizedBox(height: 42),
          CustomButton(
            onPressed: () {},
            backgoundColor: AppColors.accent,
            child: Align(
              child: Text(
                'SIGN IN',
                style: AppStyles.p16W600.copyWith(color: AppColors.secondry),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
