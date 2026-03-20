import 'package:flutter/material.dart';
import 'package:session14_home_work/widgets/custom_feature_item.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomFeatureItem(
          icon: Icon(Icons.speed, color: Color(0xff654d89)),
          iconBackgroundColor: Color(0xffefebfa),
          title: 'Fast Performance',
          description: 'Lightning fast app performance',
        ),
        CustomFeatureItem(
          icon: Icon(Icons.security, color: Color(0xff2296ed)),
          iconBackgroundColor: Color(0xffeaf4fd),
          title: 'Secure',
          description: 'Your data is safe with us',
        ),
        CustomFeatureItem(
          icon: Icon(Icons.palette, color: Color(0xfffb9800)),
          iconBackgroundColor: Color(0xfffef4db),
          title: 'Beautiful UI',
          description: 'Modern and clean design',
        ),
      ],
    );
  }
}
