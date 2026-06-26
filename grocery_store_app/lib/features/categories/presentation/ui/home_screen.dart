import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/user/user_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(top: 19.0, left: 28),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Good Morning',
                style: AppStyles.p14W400.copyWith(
                  color: AppColors.accentText,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  BlocBuilder<UserCubit, UserState>(
                    builder: (context, state) {
                      final user = BlocProvider.of<UserCubit>(
                        context,
                      ).currentUser;
                      if (state is UserSuccess) {
                        return Text(
                          '${user!.firstName} ${user.lastName}',
                          style: AppStyles.p20W600.copyWith(
                            color: AppColors.secondry,
                          ),
                        );
                      } else if (state is UserFailure) {
                        return SizedBox();
                      } else {
                        return CircularProgressIndicator(
                          color: AppColors.accent,
                        );
                      }
                    },
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    Assets.assetsIconsProfilePictureIcon,
                    fit: .cover,
                  ),
                  SizedBox(width: 28),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
