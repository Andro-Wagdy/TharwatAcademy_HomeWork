import 'package:chat_bot_app/core/constants/assets.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/suggestion_item.dart';
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
            icon: Assets.assetsImagesExplainIcon,
            categoryTitle: 'Explain',
            onTap: onTap,
          ),
          SizedBox(height: 37),
          SuggestionItem(
            icon: Assets.assetsImagesEditIcon,
            categoryTitle: 'Write & edit',
            titleList: writeCategoryTitleList,
            onTap: onTap,
          ),
          SizedBox(height: 37),
          SuggestionItem(
            icon: Assets.assetsImagesTranslateIcon,
            categoryTitle: 'Translate',
            titleList: translateCategoryTitleList,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
