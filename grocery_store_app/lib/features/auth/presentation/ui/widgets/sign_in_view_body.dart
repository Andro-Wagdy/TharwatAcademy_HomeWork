import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/data/validators/auth_validators.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/user/user_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/create_account_view.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/password_text_field.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/home_view.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/custom_text_form_field.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<SignInViewBody> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.onUserInteraction;
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
      child: Form(
        key: _formKey,
        autovalidateMode: _autovalidateMode,
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
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccountView(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(Assets.assetsIconsCancelIcon),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomTextFormField(
              controller: _controllerEmail,
              validator: (value) =>
                  AuthValidators.validateLoginEmail(value: value),
              hintText: 'Email',
              contentPadding: .symmetric(vertical: 18, horizontal: 20),
              keyboardType: .emailAddress,
              autovalidateMode: _autovalidateMode,
            ),
            SizedBox(height: 12),
            PasswordTextField(
              controller: _controllerPassword,
              validator: (value) =>
                  AuthValidators.validateLoginPassword(value: value),
              hintText: 'Password',
              contentPadding: .symmetric(vertical: 18, horizontal: 20),
              autovalidateMode: _autovalidateMode,
            ),
            SizedBox(height: 12),
            Text(
              'Forget Password?',
              style: AppStyles.p14W400.copyWith(color: AppColors.borderFocused),
            ),
            SizedBox(height: 42),
            BlocConsumer<SignInCubit, SignInState>(
              listener: (context, state) async {
                if (state is SignInSuccess) {
                  await BlocProvider.of<UserCubit>(context).loadUser();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
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
                          if (_formKey.currentState!.validate()) {
                            var cubit = BlocProvider.of<SignInCubit>(context);
                            await cubit.loginUser(
                              email: _controllerEmail.text,
                              password: _controllerPassword.text,
                            );
                          }
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
      ),
    );
  }
}
