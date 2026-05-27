import 'package:chat_bot_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static const String _fontFamily = 'Nunito';

  static const TextStyle onboardingHeadline = TextStyle(
    color: AppColors.onboardingHeadlineText,
    fontFamily: _fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle screenTitle = TextStyle(
    color: AppColors.screenTitleText,
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle appBarTitle = TextStyle(
    color: AppColors.appBarTitleText,
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle receivedMessageText = TextStyle(
    color: AppColors.receivedMessageText,
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle sentMessageText = TextStyle(
    color: AppColors.sentMessageText,
    fontFamily: _fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle primaryBodyText = TextStyle(
    color: AppColors.primaryBodyText,
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle secondaryBodyText = TextStyle(
    color: AppColors.secondaryBodyText,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle messageTextFieldInput = TextStyle(
    color: AppColors.primaryBodyText,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle messageTextFieldHint = TextStyle(
    color: AppColors.textFieldHintText,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle primaryButtonText = TextStyle(
    color: AppColors.sendButtonIcon,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle messageTimeText = TextStyle(
    color: AppColors.smallCaptionText,
    fontFamily: _fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle selectedTabText = TextStyle(
    color: AppColors.selectedTabText,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle unselectedTabText = TextStyle(
    color: AppColors.unselectedTabText,
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
