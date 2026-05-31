import 'package:chat_bot_app/cubits/chat/chat_cubit.dart';
import 'package:chat_bot_app/widgets/bot_chat_bubble.dart';
import 'package:chat_bot_app/widgets/user_chat_bubble.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        final messages = BlocProvider.of<ChatCubit>(context).messages;
        final isLoading = state is ChatLoading;
        return ListView.builder(
          padding: const EdgeInsets.only(bottom: 130),
          itemCount: messages.length + (isLoading ? 1 : 0),
          itemBuilder: (context, index) {
            if (isLoading && index == messages.length) {
              return const BotChatBubble(message: '...');
            }
            final message = messages[index];
            if (message.isUser) {
              return UserChatBubble(message: message.text);
            } else {
              return BotChatBubble(message: message.text);
            }
          },
        );
      },
    );
  }
}
