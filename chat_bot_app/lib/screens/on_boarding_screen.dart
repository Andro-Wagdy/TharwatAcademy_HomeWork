import 'package:chat_bot_app/app_constants.dart';
import 'package:chat_bot_app/constants/assets.dart';
import 'package:chat_bot_app/screens/chat_screen.dart';
import 'package:chat_bot_app/shared_preferences_singleton.dart';
import 'package:chat_bot_app/theme/app_colors.dart';
import 'package:chat_bot_app/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  void _completeOnBoarding(BuildContext context) {
    SharedPreferencesSingleton.instance.setBool(
      AppConstants.seenOnboardingKey,
      true,
    );
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Column(
              children: [
                SizedBox(height: 80),
                Text('You AI Assistant', style: AppStyles.onboardingTitle),
                SizedBox(height: 14),
                Text(
                  'Using this software,you can ask you\nquestions and receive articles using\nartificial intelligence assistant',
                  textAlign: TextAlign.center,
                  style: AppStyles.onboardingDescription,
                ),
              ],
            ),
            Spacer(),
            Image(
              image: AssetImage(Assets.assetsImagesOnBoarding),
              fit: BoxFit.cover,
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 34),
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 20),

              decoration: ShapeDecoration(
                color: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: GestureDetector(
                onTap: () => _completeOnBoarding(context),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    const Expanded(child: SizedBox.shrink()),
                    Text('Continue', style: AppStyles.continueButton),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(Assets.assetsImagesArrowRight),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
