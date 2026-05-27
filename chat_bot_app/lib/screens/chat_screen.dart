import 'package:chat_bot_app/widgets/app_bar_widget.dart';
import 'package:chat_bot_app/widgets/bot_chat_bubble.dart';
import 'package:chat_bot_app/widgets/user_chat_bubble.dart';
import 'package:chat_bot_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(bottom: 130),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final isUser = index.isEven;
                      if (isUser) {
                        return UserChatBubble(message: messages[index]);
                      } else {
                        return BotChatBubble(message: messages[index]);
                      }
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
            child: TextFieldWidget(
              controller: _controller,
              onSend: () {
                if (_controller.text.trim().isEmpty) return;

                setState(() {
                  messages.add(_controller.text.trim());
                  _controller.clear();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
