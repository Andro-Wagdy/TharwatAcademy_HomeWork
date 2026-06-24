import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/password_text_field.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';
import 'package:grocery_store_app/widgets/custom_text_field.dart';

class CreateAccountViewBody extends StatefulWidget {
  const CreateAccountViewBody({super.key});

  @override
  State<CreateAccountViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<CreateAccountViewBody> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
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
                'Create your account',
                style: AppStyles.p20W600.copyWith(color: AppColors.secondry),
              ),
              Spacer(),
              SvgPicture.asset(Assets.assetsIconsCancelIcon),
            ],
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: controller,
                  hintText: 'First Name',
                  contentPadding: .symmetric(vertical: 10, horizontal: 22),
                ),
              ),
              SizedBox(width: 19),
              Expanded(
                child: CustomTextField(
                  controller: controller,
                  hintText: 'Last Name',
                  contentPadding: .symmetric(vertical: 10, horizontal: 22),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          CustomTextField(
            controller: controller,
            hintText: 'Email Address',
            contentPadding: .symmetric(vertical: 20, horizontal: 22),
            keyboardType: .emailAddress,
          ),
          SizedBox(height: 16),
          PasswordTextField(
            controller: controller,
            hintText: 'Password',
            contentPadding: .symmetric(vertical: 20, horizontal: 22),
          ),
          SizedBox(height: 10),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'By tapping Sign up you accept all \n',
                  style: AppStyles.p14W400.copyWith(
                    color: AppColors.secondryText,
                  ),
                ),
                TextSpan(
                  text: 'terms',
                  style: AppStyles.p14W600.copyWith(color: AppColors.accent),
                ),
                TextSpan(
                  text: ' and ',
                  style: AppStyles.p14W400.copyWith(
                    color: AppColors.secondryText,
                  ),
                ),
                TextSpan(
                  text: 'condition',
                  style: AppStyles.p14W600.copyWith(color: AppColors.accent),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 23),
          CustomButton(
            onPressed: () {},
            backgoundColor: AppColors.accent,
            child: Align(
              child: Text(
                'CREATE AN ACCOUNT',
                style: AppStyles.p16W700.copyWith(color: AppColors.secondry),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
