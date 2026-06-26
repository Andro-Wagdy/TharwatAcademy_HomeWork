import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/data/validators/auth_validators.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/password_text_field.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/sign_in_dialog.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/custom_text_form_field.dart';

class CreateAccountViewBody extends StatefulWidget {
  const CreateAccountViewBody({super.key});

  @override
  State<CreateAccountViewBody> createState() => _CreateAccountViewBodyState();
}

class _CreateAccountViewBodyState extends State<CreateAccountViewBody> {
  final TextEditingController _controllerFirstName = TextEditingController();
  final TextEditingController _controllerLastName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AutovalidateMode _autovalidateMode = AutovalidateMode.onUserInteraction;
  @override
  void dispose() {
    _controllerFirstName.dispose();
    _controllerLastName.dispose();
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
                  child: CustomTextFormField(
                    controller: _controllerFirstName,
                    autovalidateMode: _autovalidateMode,
                    validator: (value) => AuthValidators.validateName(
                      value: value,
                      fieldName: 'First Name',
                    ),
                    hintText: 'First Name',
                    contentPadding: .symmetric(vertical: 10, horizontal: 22),
                  ),
                ),
                SizedBox(width: 19),
                Expanded(
                  child: CustomTextFormField(
                    controller: _controllerLastName,
                    validator: (value) => AuthValidators.validateName(
                      value: value,
                      fieldName: 'First Name',
                    ),
                    hintText: 'Last Name',
                    contentPadding: .symmetric(vertical: 10, horizontal: 22),
                    autovalidateMode: _autovalidateMode,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              controller: _controllerEmail,
              validator: (value) => AuthValidators.validateEmail(value: value),
              hintText: 'Email Address',
              contentPadding: .symmetric(vertical: 20, horizontal: 22),
              keyboardType: .emailAddress, autovalidateMode: _autovalidateMode,
            ),
            SizedBox(height: 16),
            PasswordTextField(
              controller: _controllerPassword,
              validator: (value) =>
                  AuthValidators.validatePassword(value: value),
              hintText: 'Password',
              contentPadding: .symmetric(vertical: 20, horizontal: 22), autovalidateMode: _autovalidateMode,
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
            BlocConsumer<RegisterCubit, RegisterState>(
              listener: (context, state) {
                if (state is RegisterSuccess) {
                  showDialog(
                    context: context,
                    builder: (context) => SignInDialog(
                      controllerFirstName: _controllerFirstName,
                      controllerLastName: _controllerLastName,
                    ),
                  );
                }
                if (state is RegisterFailure) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(state.errMessage)));
                }
              },
              builder: (context, state) {
                return state is RegisterLoading
                    ? CircularProgressIndicator(color: AppColors.accent)
                    : CustomButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            var cubit = BlocProvider.of<RegisterCubit>(context);
                            await cubit.registerUser(
                              email: _controllerEmail.text,
                              password: _controllerPassword.text,
                              firstName: _controllerFirstName.text,
                              lastName: _controllerLastName.text,
                            );
                          }
                        },
                        backgoundColor: AppColors.accent,
                        child: Align(
                          child: Text(
                            'CREATE AN ACCOUNT',
                            style: AppStyles.p16W700.copyWith(
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
