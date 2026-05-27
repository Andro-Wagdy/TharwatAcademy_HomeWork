import 'package:chat_bot_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  Future<void> _completeOnBoarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);
    Navigator.pushReplacement(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(builder: (context) => ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Column(
              children: [
                SizedBox(height: 80),
                Text(
                  'You AI Assistant',
                  style: TextStyle(
                    color: const Color(0xFF3369FF),
                    fontSize: 23,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Using this software,you can ask you\nquestions and receive articles using\nartificial intelligence assistant',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF757575),
                    fontSize: 15,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image(
              image: AssetImage('assets/images/on_boarding.png'),
              fit: BoxFit.cover,
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 34),
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 20),

              decoration: ShapeDecoration(
                color: const Color(0xFF3369FF),
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
                    Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset(
                          'assets/images/arrow-right.svg',
                        ),
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
