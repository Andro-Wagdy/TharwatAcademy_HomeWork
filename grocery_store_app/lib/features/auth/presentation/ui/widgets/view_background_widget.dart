import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';

class ViewBackgroundWidget extends StatelessWidget {
  const ViewBackgroundWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.assetsImagesFruits1, fit: BoxFit.cover),
        Positioned(
          left: 36,
          top: 52,
          child: SvgPicture.asset(Assets.assetsIconsBackIcon),
        ),
        child
      ],
    );
  }
}
