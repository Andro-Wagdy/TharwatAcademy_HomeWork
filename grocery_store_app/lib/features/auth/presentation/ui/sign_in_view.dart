import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/sign_in/sign_in_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/custom_view_background_widget.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        body: CustomViewBackgroundWidget(
          backgroundImage: Assets.assetsImagesFruits2,
          child: Align(
            alignment: .bottomCenter,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 405 / 812,
              width: MediaQuery.sizeOf(context).width,
              decoration: ShapeDecoration(
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: SignInViewBody(),
            ),
          ),
        ),
      ),
    );
  }
}
