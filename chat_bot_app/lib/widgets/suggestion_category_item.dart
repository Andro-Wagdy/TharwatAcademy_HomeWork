import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SuggestionCategoryItem extends StatelessWidget {
  const SuggestionCategoryItem({super.key, required this.icon, required this.categoryTitle});
  final String icon;
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        SvgPicture.asset(icon),
        SizedBox(height: 5),
        Text(
          categoryTitle,
          style: TextStyle(
            color: const Color(0xFF3E3E3E),
            fontSize: 14,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
