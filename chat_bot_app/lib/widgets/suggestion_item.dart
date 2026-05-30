import 'package:chat_bot_app/widgets/suggestion_category_item.dart';
import 'package:chat_bot_app/widgets/suggestion_container_item.dart';
import 'package:flutter/widgets.dart';

class SuggestionItem extends StatelessWidget {
  const SuggestionItem({
    super.key,
    required this.titleList,
    required this.icon,
    required this.categoryTitle,
    required this.onTap,
  });

  final List<String> titleList;
  final String icon;
  final String categoryTitle;
  final ValueChanged<String> onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        SuggestionCategoryItem(icon: icon, categoryTitle: categoryTitle),
        SizedBox(height: 10),
        ...List.generate(titleList.length, (index) {
          return SuggestionContainerItem(text: titleList[index], onTap: onTap);
        }),
      ],
    );
  }
}
