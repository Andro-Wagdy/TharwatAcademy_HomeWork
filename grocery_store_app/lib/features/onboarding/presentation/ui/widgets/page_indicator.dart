import 'package:flutter/material.dart';
import 'package:grocery_store_app/core/theme/app_colors.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      children: List.generate(3, (dotsIndex) {
        return AnimatedContainer(
          width: 23,
          height: 6,
          margin: dotsIndex == 2 ? .zero : .only(right: 5),
          duration: Duration(milliseconds: 300),
          decoration: ShapeDecoration(
            color: pageIndex == dotsIndex
                ? AppColors.sliderEnabled
                : AppColors.alert,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        );
      }),
    );
  }
}
