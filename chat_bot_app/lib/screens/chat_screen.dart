import 'package:chat_bot_app/cubits/cubit/chat_cubit.dart';
import 'package:chat_bot_app/widgets/app_bar_widget.dart';
import 'package:chat_bot_app/widgets/bot_chat_bubble.dart';
import 'package:chat_bot_app/widgets/user_chat_bubble.dart';
import 'package:chat_bot_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarWidget(),
        body: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: BlocBuilder<ChatCubit, ChatState>(
                      builder: (context, state) {
                        final messages = context.read<ChatCubit>().messages;
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
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 24,
              left: 18,
              bottom: 36,
              child: TextFieldWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
