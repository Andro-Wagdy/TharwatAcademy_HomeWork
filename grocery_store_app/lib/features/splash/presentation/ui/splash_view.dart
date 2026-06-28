import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/constants/app_constants.dart';
import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/core/shared_preferences_singleton.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/create_account_view.dart';
import 'package:grocery_store_app/features/onboarding/presentation/ui/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  void excuteNavigation() {
    final bool seenOnboarding =
        SharedPreferencesSingleton.instance.getBool(
          AppConstants.seenOnboardingKey,
        ) ??
        false;
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              seenOnboarding ? CreateAccountView() : OnboardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.accent,
      body: SafeArea(
        child: Align(
          alignment: .bottomCenter,
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120.0),
                child: Image.asset(Assets.assetsImagesSplash, fit: .cover),
              ),
              SizedBox(height: 38),
              Text(
                'Fresh Fruits',
                style: AppStyles.p38W700.copyWith(
                  color: AppColors.primary,
                  height: 1.09,
                ),
              ),
              SizedBox(height: 92),
            ],
          ),
        ),
      ),
    );
  }
}
