import 'package:chat_bot_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  const AppStyles._();

  static const String fontFamily = 'Nunito';

  static const appBarTitle = TextStyle(
    color: AppColors.primary,
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const onlineStatus = TextStyle(
    color: AppColors.online,
    fontSize: 17,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const userMessage = TextStyle(
    color: AppColors.userText,
    fontSize: 13,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const botMessage = TextStyle(color: AppColors.botText);

  static const textFieldInput = TextStyle(
    color: AppColors.primary,
    fontSize: 13,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const textFieldHint = TextStyle(
    color: AppColors.textFieldHint,
    fontSize: 13,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const suggestionCategory = TextStyle(
    color: AppColors.suggestionTitle,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const suggestionText = TextStyle(
    color: AppColors.suggestionText,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const onboardingTitle = TextStyle(
    color: AppColors.primary,
    fontSize: 23,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const onboardingDescription = TextStyle(
    color: AppColors.onboardingDescription,
    fontSize: 15,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const continueButton = TextStyle(
    color: AppColors.white,
    fontSize: 19,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
  );
}
