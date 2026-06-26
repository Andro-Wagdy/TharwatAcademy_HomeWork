import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/register/register_cubit.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/create_account_view_body.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/widgets/custom_view_background_widget.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: CustomViewBackgroundWidget(
          backgroundImage: Assets.assetsImagesFruits1,
          child: Align(
            alignment: .bottomCenter,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 480 / 812,
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
              child: CreateAccountViewBody(),
            ),
          ),
        ),
      ),
    );
  }
}
