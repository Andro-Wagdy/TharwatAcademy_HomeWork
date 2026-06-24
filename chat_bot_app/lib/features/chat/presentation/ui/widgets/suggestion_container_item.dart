import 'package:chat_bot_app/core/theme/app_colors.dart';
import 'package:chat_bot_app/core/theme/app_styles.dart';
import 'package:flutter/widgets.dart';

class SuggestionContainerItem extends StatelessWidget {
  const SuggestionContainerItem({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(text),
      child: Container(
        width: double.infinity,
        padding: .symmetric(vertical: 10.5),
        margin: .symmetric(vertical: 8),
        decoration: ShapeDecoration(
          color: AppColors.suggestionBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.suggestionText,
        ),
      ),
    );
  }
}
