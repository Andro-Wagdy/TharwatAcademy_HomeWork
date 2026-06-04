import 'package:chat_bot_app/app_constants.dart';
import 'package:chat_bot_app/constants/assets.dart';
import 'package:chat_bot_app/screens/chat_screen.dart';
import 'package:chat_bot_app/screens/on_boarding_screen.dart';
import 'package:chat_bot_app/shared_preferences_singleton.dart';
import 'package:chat_bot_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    excuteNavigation();
  }
  void excuteNavigation() {
    final bool seenOnboarding =
        SharedPreferencesSingleton.instance.getBool(
          AppConstants.seenOnboardingKey,
        ) ??
        false;
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              seenOnboarding ? const ChatScreen() : const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 56.0),
          child: Image.asset(Assets.assetsImagesSplash),
        ),
      ),
    );
  }
}
