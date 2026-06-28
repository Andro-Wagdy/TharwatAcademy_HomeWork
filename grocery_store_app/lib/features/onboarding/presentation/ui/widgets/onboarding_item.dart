import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/onboarding/data/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onBoardingItem});
  final OnboardingModel onBoardingItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .center,
      children: [
        Image.asset(onBoardingItem.image, fit: .cover),
        SizedBox(height: 22),
        Text(
          onBoardingItem.title,
          style: AppStyles.i24W700.copyWith(color: AppColors.secondry),
          textAlign: .center,
        ),
        SizedBox(height: 34),
        Text(
          onBoardingItem.subTitle,
          style: AppStyles.p14W400.copyWith(
            color: AppColors.secondry,
            height: 1.57,
          ),
          textAlign: .center,
        ),
      ],
    );
  }
}
