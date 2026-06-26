import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/test_home_screen.dart';
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
          BlocConsumer<SignInCubit, SignInState>(
            listener: (context, state) {
              if (state is SignInSuccess) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TestHomeScreen()),
                );
              }
              if (state is SignInFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.errMessage)));
              }
            },
            builder: (context, state) {
              return state is SignInLoading
                  ? CircularProgressIndicator(color: AppColors.accent)
                  : CustomButton(
                      onPressed: () async {
                        var cubit = BlocProvider.of<SignInCubit>(context);
                        await cubit.loginUser(
                          email: _controllerEmail.text,
                          password: _controllerPassword.text,
                        );
                      },
                      backgoundColor: AppColors.accent,
                      child: Align(
                        child: Text(
                          'SIGN IN',
                          style: AppStyles.p16W600.copyWith(
                            color: AppColors.secondry,
                          ),
                        ),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}
