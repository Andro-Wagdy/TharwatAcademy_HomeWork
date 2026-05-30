import 'package:chat_bot_app/widgets/suggestion_item.dart';
import 'package:flutter/widgets.dart';

class ChatSuggestionsListView extends StatelessWidget {
  const ChatSuggestionsListView({
    super.key,
    required this.onTap,
    required this.explainCategoryTitleList,
    required this.writeCategoryTitleList,
    required this.translateCategoryTitleList,
  });

  final ValueChanged<String> onTap;
  final List<String> explainCategoryTitleList;
  final List<String> writeCategoryTitleList;
  final List<String> translateCategoryTitleList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 29),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          SizedBox(height: 19),
          SuggestionItem(
            titleList: explainCategoryTitleList,
            icon: 'assets/images/explain_icon.svg',
            categoryTitle: 'Explain',
            onTap: onTap,
          ),
          SizedBox(height: 37),
          SuggestionItem(
            icon: 'assets/images/edit_icon.svg',
            categoryTitle: 'Write & edit',
            titleList: writeCategoryTitleList,
            onTap: onTap,
          ),
          SizedBox(height: 37),
          SuggestionItem(
            icon: 'assets/images/translate_icon.svg',
            categoryTitle: 'Translate',
            titleList: translateCategoryTitleList,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
