import 'package:flutter/material.dart';
import 'package:session14_home_work/widgets/custom_section_title.dart';
import 'package:session14_home_work/widgets/elevated_action_buttons_section.dart';
import 'package:session14_home_work/widgets/features_section.dart';
import 'package:session14_home_work/widgets/get_started_section.dart';
import 'package:session14_home_work/widgets/quick_stats_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef7ff),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 25,
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            GetStartedSection(),
            SizedBox(height: 20),
            CustomSectionTitle(text: 'Quick Stats'),
            SizedBox(height: 10),
            QuickStatsSection(),
            SizedBox(height: 20),
            CustomSectionTitle(text: 'Features'),
            SizedBox(height: 10),
            FeaturesSection(),
            Spacer(),
            ElevatedActionButtonsSection(),
          ],
        ),
      ),
    );
  }
}
