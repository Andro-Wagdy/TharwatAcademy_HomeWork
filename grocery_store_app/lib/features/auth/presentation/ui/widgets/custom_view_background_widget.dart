import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store_app/constants/assets.dart';

class CustomViewBackgroundWidget extends StatelessWidget {
  const CustomViewBackgroundWidget({super.key, required this.child, required this.backgroundImage});
  final Widget child;
  final String backgroundImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(backgroundImage, fit: BoxFit.cover),
        Positioned(
          left: 36,
          top: 52,
          child: SvgPicture.asset(Assets.assetsIconsBackIcon),
        ),
        child,
      ],
    );
  }
}
