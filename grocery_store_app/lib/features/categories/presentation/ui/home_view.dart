import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/cubits/user/user_cubit.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/category_list_view.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/recipe_list_view.dart';
import 'package:grocery_store_app/features/categories/presentation/ui/widgets/trending_deals_grid_view.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 19.0, left: 28),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Good Morning',
                  style: AppStyles.p14W400.copyWith(color: AppColors.accentText),
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
                SizedBox(height: 23),
                RecipeListView(),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Categories',
                      style: AppStyles.p18W600.copyWith(
                        color: AppColors.secondry,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(Assets.assetsIconsForwardIcon, fit: .cover),
                    SizedBox(width: 28),
                  ],
                ),
                SizedBox(height: 13),
                CategoryListView(),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Trending Deals',
                      style: AppStyles.p18W600.copyWith(
                        color: AppColors.secondry,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(Assets.assetsIconsForwardIcon, fit: .cover),
                    SizedBox(width: 28),
                  ],
                ),
                SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(right: 27.0),
                  child: TrendingDealsGridView(),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: CustomButton(
                    onPressed: () {},
                    backgoundColor: AppColors.secondry,
                    child: Align(
                      child: Text(
                        'More',
                        style: AppStyles.p16W600.copyWith(
                          color: AppColors.primaryText,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
