import 'package:flutter/material.dart';
import 'package:session14_home_work/widgets/custom_elevated_button.dart';

class GetStartedSection extends StatelessWidget {
  const GetStartedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color(0xff8160b9),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.4),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello! 👋',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Try your best to build this ui',
            style: TextStyle(
              color: Color(0xffffebff),
              fontSize: 14,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: CustomeElvatedButton(
              elevation: 4,
              radius: 8,
              text: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  letterSpacing: 1.2,
                ),
              ),
              color: Color(0xff673bb7),
            ),
          ),
        ],
      ),
    );
  }
}
