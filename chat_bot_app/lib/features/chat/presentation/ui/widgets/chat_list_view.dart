import 'package:chat_bot_app/features/chat/data/models/chat_message_model.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/bot_chat_bubble.dart';
import 'package:chat_bot_app/features/chat/presentation/ui/widgets/user_chat_bubble.dart';
import 'package:flutter/widgets.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  final List<ChatMessageModel> messages;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.only(bottom: 130),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];

        if (message.isUser) {
          return UserChatBubble(message: message.text);
        } else {
          return BotChatBubble(message: message.text);
        }
      },
    );
  }
}
