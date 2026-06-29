import 'package:grocery_store_app/core/constants/assets.dart';
import 'package:grocery_store_app/features/onboarding/data/models/onboarding_model.dart';

const List<OnboardingModel> onBoardingItemList = [
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
