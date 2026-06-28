import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/core/constants/app_constants.dart';
import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/core/shared_preferences_singleton.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';
import 'package:grocery_store_app/core/theme/app_styles.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/create_account_view.dart';
import 'package:grocery_store_app/features/auth/presentation/ui/sign_in_view.dart';
import 'package:grocery_store_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:grocery_store_app/features/onboarding/presentation/ui/widgets/onboarding_item.dart';
import 'package:grocery_store_app/features/onboarding/presentation/ui/widgets/page_indicator.dart';
import 'package:grocery_store_app/widgets/custom_button.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final List<OnboardingModel> onBoardingItemList = [
    OnboardingModel(
      image: Assets.assetsImagesFruitsBucket,
      title: 'Welcome to Fresh Fruits Grocery application',
      subTitle:
          'Discover fresh fruits and daily essentials delivered straight to your doorstep with just a few taps',
    ),
    OnboardingModel(
      image: Assets.assetsImagesFruitsBucket,
      title: 'We provide best quality Fruits to your family',
      subTitle:
          'Handpicked fresh produce from trusted farms to ensure the highest quality for you and your loved ones',
    ),
    OnboardingModel(
      image: Assets.assetsImagesDelivery,
      title: 'Fast and Reliable Delivery by Our Couriers',
      subTitle:
          'Enjoy quick, safe, and reliable delivery right to your door, making grocery shopping easier than ever',
    ),
  ];
  int pageIndex = 0;
  final PageController _pageController = PageController();
  void _completeOnBoarding(BuildContext context) {
    SharedPreferencesSingleton.instance.setBool(
      AppConstants.seenOnboardingKey,
      true,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
          child: Column(
            mainAxisSize: .min,
            children: [
              Visibility(
                visible: pageIndex != onBoardingItemList.length - 1,
                child: Align(
                  alignment: .topLeft,
                  child: GestureDetector(
                    onTap: () {
                      pageIndex > 0
                          ? _pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            )
                          : _pageController.keepPage;
                    },
                    child: SvgPicture.asset(
                      Assets.assetsIconsBackIcon,
                      fit: .cover,
                      colorFilter: .mode(AppColors.borderFocused, .srcIn),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: .horizontal,
                  onPageChanged: (value) {
                    setState(() {
                      pageIndex = value;
                    });
                  },
                  itemCount: onBoardingItemList.length,
                  itemBuilder: (context, pageIndex) {
                    return OnboardingItem(
                      onBoardingItem: onBoardingItemList[pageIndex],
                    );
                  },
                ),
              ),
              PageIndicator(pageIndex: pageIndex),
              SizedBox(height: 41),
              pageIndex == onBoardingItemList.length - 1
                  ? Column(
                      children: [
                        CustomButton(
                          onPressed: () {
                            _completeOnBoarding(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateAccountView(),
                              ),
                            );
                          },
                          backgoundColor: AppColors.secondry,
                          child: Align(
                            child: Text(
                              'CREATE AN ACCOUNT',
                              style: AppStyles.p16W700.copyWith(
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 18),
                        CustomButton(
                          hasBorder: true,
                          onPressed: () {
                            _completeOnBoarding(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInView(),
                              ),
                            );
                          },
                          backgoundColor: AppColors.primary,
                          child: Align(
                            child: Text(
                              'LOGIN',
                              style: AppStyles.p16W700.copyWith(
                                color: AppColors.secondry,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : CustomButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      backgoundColor: AppColors.accent,
                      child: Align(
                        child: Text(
                          'Next',
                          style: AppStyles.p16W700.copyWith(
                            color: AppColors.secondry,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
