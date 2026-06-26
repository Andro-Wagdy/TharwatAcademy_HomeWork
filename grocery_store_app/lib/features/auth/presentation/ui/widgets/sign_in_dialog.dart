import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/sign_in_view.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';

class SignInDialog extends StatelessWidget {
  const SignInDialog({
    super.key,
    required TextEditingController controllerFirstName,
    required TextEditingController controllerLastName,
  }) : _controllerFirstName = controllerFirstName,
       _controllerLastName = controllerLastName;

  final TextEditingController _controllerFirstName;
  final TextEditingController _controllerLastName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: .symmetric(vertical: 55, horizontal: 50),
      backgroundColor: AppColors.alert,
      content: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          Text(
            'Congratulations!',
            style: AppStyles.i24W700.copyWith(
              height: 1.09,
              color: AppColors.borderFocused,
            ),
          ),
          SizedBox(height: 18),
          Text(
            '${_controllerFirstName.text} ${_controllerLastName.text}',
            style: AppStyles.i13W700.copyWith(
              color: AppColors.secondryName,
              height: 1.09,
            ),
          ),
          SizedBox(height: 230),
          CustomButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInView()),
              );
            },

            backgoundColor: AppColors.accent,
            child: Align(
              child: Text(
                'SIGN IN',
                style: AppStyles.p12W600.copyWith(color: AppColors.secondry),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
